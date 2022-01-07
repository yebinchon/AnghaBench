
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int ether_vtag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ qnqid; scalar_t__ pvid; } ;
typedef TYPE_2__* POCE_SOFTC ;


 scalar_t__ EVL_VLANOFTAG (int ) ;
 int FALSE ;
 int M_VLANTAG ;
 int M_WRITABLE (struct mbuf*) ;
 struct mbuf* ether_vlanencap (struct mbuf*,scalar_t__) ;

__attribute__((used)) static struct mbuf *
oce_insert_vlan_tag(POCE_SOFTC sc, struct mbuf *m, boolean_t *complete)
{
 uint16_t vlan_tag = 0;

 if(!M_WRITABLE(m))
  return ((void*)0);


 if(m->m_flags & M_VLANTAG) {
  vlan_tag = EVL_VLANOFTAG(m->m_pkthdr.ether_vtag);
  m->m_flags &= ~M_VLANTAG;
 }


 if(sc->pvid) {
  if(!vlan_tag)
   vlan_tag = sc->pvid;
  if (complete)
   *complete = FALSE;
 }

 if(vlan_tag) {
  m = ether_vlanencap(m, vlan_tag);
 }

 if(sc->qnqid) {
  m = ether_vlanencap(m, sc->qnqid);

  if (complete)
   *complete = FALSE;
 }
 return m;
}
