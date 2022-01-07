
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trxd {int flags; struct mbuf* m; struct trxd* vnext; void* next; void* data; } ;
struct schan {int chan; scalar_t__ state; int tx_pending; int tx_limit; struct mn_softc* sc; } ;
struct mn_softc {char* name; TYPE_3__* m32x; TYPE_1__** ch; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {int m_len; TYPE_2__ m_pkthdr; struct mbuf* m_next; struct trxd* m_data; } ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_6__ {int txpoll; } ;
struct TYPE_4__ {struct trxd* xl; } ;


 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_FREE_ITEM (int ) ;
 int NG_FREE_M (struct mbuf*) ;
 struct schan* NG_HOOK_PRIVATE (int ) ;
 scalar_t__ UP ;
 int m_freem (struct mbuf*) ;
 struct trxd* mn_alloc_desc () ;
 int mn_free_desc (struct trxd*) ;
 int mn_maxlatency ;
 int printf (char*,...) ;
 void* vtophys (struct trxd*) ;

__attribute__((used)) static int
ngmn_rcvdata(hook_p hook, item_p item)
{
 struct mbuf *m2;
 struct trxd *dp, *dp2;
 struct schan *sch;
 struct mn_softc *sc;
 int chan, pitch, len;
 struct mbuf *m;

 sch = NG_HOOK_PRIVATE(hook);
 sc = sch->sc;
 chan = sch->chan;

 if (sch->state != UP) {
  NG_FREE_ITEM(item);
  return (0);
 }
 NGI_GET_M(item, m);
 if (sch->tx_pending + m->m_pkthdr.len > sch->tx_limit * mn_maxlatency) {
  NG_FREE_M(m);
  NG_FREE_ITEM(item);
  return (0);
 }
 NG_FREE_ITEM(item);
 pitch = 0;
 m2 = m;
 dp2 = sc->ch[chan]->xl;
 len = m->m_pkthdr.len;
 while (len) {
  dp = mn_alloc_desc();
  if (!dp) {
   pitch++;
   m_freem(m);
   sc->ch[chan]->xl = dp2;
   dp = dp2->vnext;
   while (dp) {
    dp2 = dp->vnext;
    mn_free_desc(dp);
    dp = dp2;
   }
   sc->ch[chan]->xl->vnext = ((void*)0);
   break;
  }
  dp->data = vtophys(m2->m_data);
  dp->flags = m2->m_len << 16;
  dp->flags += 1;
  len -= m2->m_len;
  dp->next = vtophys(dp);
  dp->vnext = ((void*)0);
  sc->ch[chan]->xl->next = vtophys(dp);
  sc->ch[chan]->xl->vnext = dp;
  sc->ch[chan]->xl = dp;
  if (!len) {
   dp->m = m;
   dp->flags |= 0xc0000000;
   dp2->flags &= ~0x40000000;
  } else {
   dp->m = ((void*)0);
   m2 = m2->m_next;
  }
 }
 if (pitch)
  printf("%s%d: Short on mem, pitched %d packets\n",
      sc->name, chan, pitch);
 else {





  sch->tx_pending += m->m_pkthdr.len;
  sc->m32x->txpoll &= ~(1 << chan);
 }
 return (0);
}
