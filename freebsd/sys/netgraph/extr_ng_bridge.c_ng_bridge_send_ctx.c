
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ng_bridge_send_ctx {int error; int manycast; TYPE_3__* incoming; int m; TYPE_3__* foundFirst; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef TYPE_3__* link_p ;
typedef int hook_p ;
struct TYPE_6__ {int xmitBroadcasts; int xmitMulticasts; int xmitOctets; int xmitPackets; int memoryFailures; } ;
struct TYPE_7__ {int hook; TYPE_2__ stats; } ;


 int ENOBUFS ;
 int M_NOWAIT ;
 TYPE_3__* NG_HOOK_PRIVATE (int ) ;
 int NG_SEND_DATA_ONLY (int,int ,struct mbuf*) ;
 struct mbuf* m_dup (int ,int ) ;

__attribute__((used)) static int
ng_bridge_send_ctx(hook_p dst, void *arg)
{
 struct ng_bridge_send_ctx *ctx = arg;
 link_p destLink = NG_HOOK_PRIVATE(dst);
 struct mbuf *m2 = ((void*)0);
 int error = 0;


 if (destLink == ctx->incoming) {
  return (1);
 }

 if (ctx->foundFirst == ((void*)0)) {





  ctx->foundFirst = destLink;
  return (1);
 }





 m2 = m_dup(ctx->m, M_NOWAIT);
 if (m2 == ((void*)0)) {
  ctx->incoming->stats.memoryFailures++;
  ctx->error = ENOBUFS;
  return (0);
 }



 destLink->stats.xmitPackets++;
 destLink->stats.xmitOctets += m2->m_pkthdr.len;
 switch (ctx->manycast) {
  default:
  break;
  case 1:
  destLink->stats.xmitMulticasts++;
  break;
  case 2:
  destLink->stats.xmitBroadcasts++;
  break;
 }


 NG_SEND_DATA_ONLY(error, destLink->hook, m2);
 if(error)
   ctx->error = error;
 return (1);
}
