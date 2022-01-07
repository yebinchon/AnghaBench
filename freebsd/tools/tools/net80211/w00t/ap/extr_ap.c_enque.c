
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int packet_len; int packet_try; int plast; scalar_t__ packet; } ;
struct ieee80211_frame {int * i_fc; } ;


 int IEEE80211_FC1_RETRY ;
 int assert (int) ;
 scalar_t__ broadcast (struct ieee80211_frame*) ;
 int err (int,char*) ;
 int gettimeofday (int *,int *) ;
 int memcpy (scalar_t__,struct ieee80211_frame*,int) ;

void enque(struct params *p, struct ieee80211_frame *wh, int len)
{
 if (broadcast(wh))
  return;

 assert(sizeof(p->packet) >= len);

 memcpy(p->packet, wh, len);
 p->packet_len = len;
 p->packet_try = 1;

 wh = (struct ieee80211_frame*) p->packet;
 wh->i_fc[1] |= IEEE80211_FC1_RETRY;

 if (gettimeofday(&p->plast, ((void*)0)) == -1)
  err(1, "gettimeofday()");
}
