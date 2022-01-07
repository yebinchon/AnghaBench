
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef int item_p ;
typedef int hook_p ;
typedef TYPE_3__* hi_p ;
struct TYPE_6__ {int outFrames; int outOctets; int inFrames; int inOctets; } ;
struct TYPE_7__ {int hook; TYPE_2__ stats; struct TYPE_7__* dest; struct TYPE_7__* dup; } ;


 int M_NOWAIT ;
 struct mbuf* NGI_M (int ) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FWD_ITEM_HOOK (int,int ,int ) ;
 TYPE_3__* NG_HOOK_PRIVATE (int ) ;
 int NG_SEND_DATA_ONLY (int,int ,struct mbuf*) ;
 struct mbuf* m_dup (struct mbuf*,int ) ;

__attribute__((used)) static int
ng_tee_rcvdata(hook_p hook, item_p item)
{
 const hi_p hinfo = NG_HOOK_PRIVATE(hook);
 hi_p h;
 int error = 0;
 struct mbuf *m;

 m = NGI_M(item);


 hinfo->stats.inOctets += m->m_pkthdr.len;
 hinfo->stats.inFrames++;


 if (hinfo->dup) {
  struct mbuf *m2;


  m2 = m_dup(m, M_NOWAIT);
  if (m2) {

   h = hinfo->dup;
   NG_SEND_DATA_ONLY(error, h->hook, m2);
   if (error == 0) {
    h->stats.outOctets += m->m_pkthdr.len;
    h->stats.outFrames++;
   }
  }
 }

 if (hinfo->dest) {
  h = hinfo->dest;
  h->stats.outOctets += m->m_pkthdr.len;
  h->stats.outFrames++;
  NG_FWD_ITEM_HOOK(error, item, h->hook);
 } else
  NG_FREE_ITEM(item);
 return (error);
}
