
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct TYPE_4__ {int bandwidth; } ;
struct ng_ppp_link {int latency; int bytesInQueue; TYPE_1__ conf; struct timeval lastWrite; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
struct TYPE_5__ {int numActiveLinks; size_t* activeLinks; struct ng_ppp_link* links; } ;


 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_PPP_MAX_LINKS ;
 int getmicrouptime (struct timeval*) ;
 int ng_ppp_intcmp ;
 int qsort_r (int*,int,int,int*,int ) ;
 int timevalsub (struct timeval*,struct timeval*) ;

__attribute__((used)) static void
ng_ppp_mp_strategy(node_p node, int len, int *distrib)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 int latency[NG_PPP_MAX_LINKS];
 int sortByLatency[NG_PPP_MAX_LINKS];
 int activeLinkNum;
 int t0, total, topSum, botSum;
 struct timeval now;
 int i, numFragments;


 if (priv->numActiveLinks == 1) {
  distrib[0] = len;
  return;
 }


 getmicrouptime(&now);


 for (activeLinkNum = 0;
     activeLinkNum < priv->numActiveLinks; activeLinkNum++) {
  struct ng_ppp_link *alink;
  struct timeval diff;
  int xmitBytes;


  alink = &priv->links[priv->activeLinks[activeLinkNum]];
  latency[activeLinkNum] = alink->latency;
  sortByLatency[activeLinkNum] = activeLinkNum;


  if (alink->bytesInQueue == 0)
   continue;


  diff = now;
  timevalsub(&diff, &alink->lastWrite);


  alink->lastWrite = now;

  if (now.tv_sec < 0 || diff.tv_sec >= 10) {
   alink->bytesInQueue = 0;
   continue;
  }


  xmitBytes = (alink->conf.bandwidth * 10 * diff.tv_sec)
      + (alink->conf.bandwidth * (diff.tv_usec / 1000)) / 100;
  alink->bytesInQueue -= xmitBytes;
  if (alink->bytesInQueue < 0)
   alink->bytesInQueue = 0;
  else
   latency[activeLinkNum] +=
       (100 * alink->bytesInQueue) / alink->conf.bandwidth;
 }


 qsort_r(sortByLatency,
     priv->numActiveLinks, sizeof(*sortByLatency), latency, ng_ppp_intcmp);


 for (numFragments = 1;
     numFragments < priv->numActiveLinks; numFragments++) {
  for (total = i = 0; i < numFragments; i++) {
   int flowTime;

   flowTime = latency[sortByLatency[numFragments]]
       - latency[sortByLatency[i]];
   total += ((flowTime * priv->links[
       priv->activeLinks[sortByLatency[i]]].conf.bandwidth)
        + 99) / 100;
  }
  if (total >= len)
   break;
 }


 for (topSum = botSum = i = 0; i < numFragments; i++) {
  int bw = priv->links[
      priv->activeLinks[sortByLatency[i]]].conf.bandwidth;

  topSum += latency[sortByLatency[i]] * bw;
  botSum += bw;
 }
 t0 = ((len * 100) + topSum + botSum / 2) / botSum;


 for (total = i = 0; i < numFragments; i++) {
  int bw = priv->links[
      priv->activeLinks[sortByLatency[i]]].conf.bandwidth;

  distrib[sortByLatency[i]] =
      (bw * (t0 - latency[sortByLatency[i]]) + 50) / 100;
  total += distrib[sortByLatency[i]];
 }


 if (total < len) {
  struct ng_ppp_link *fastLink =
      &priv->links[priv->activeLinks[sortByLatency[0]]];
  int fast = 0;


  for (i = 1; i < numFragments; i++) {
   struct ng_ppp_link *const link =
       &priv->links[priv->activeLinks[sortByLatency[i]]];

   if (link->conf.bandwidth > fastLink->conf.bandwidth) {
    fast = i;
    fastLink = link;
   }
  }
  distrib[sortByLatency[fast]] += len - total;
 } else while (total > len) {
  struct ng_ppp_link *slowLink =
      &priv->links[priv->activeLinks[sortByLatency[0]]];
  int delta, slow = 0;


  for (i = 1; i < numFragments; i++) {
   struct ng_ppp_link *const link =
       &priv->links[priv->activeLinks[sortByLatency[i]]];

   if (distrib[sortByLatency[slow]] == 0 ||
       (distrib[sortByLatency[i]] > 0 &&
       link->conf.bandwidth < slowLink->conf.bandwidth)) {
    slow = i;
    slowLink = link;
   }
  }
  delta = total - len;
  if (delta > distrib[sortByLatency[slow]])
   delta = distrib[sortByLatency[slow]];
  distrib[sortByLatency[slow]] -= delta;
  total -= delta;
 }
}
