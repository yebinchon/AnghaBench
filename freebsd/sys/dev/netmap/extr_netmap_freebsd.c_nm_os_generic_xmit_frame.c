
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct nm_os_gen_arg {scalar_t__ len; int ring_nr; int addr; struct mbuf* m; struct ifnet* ifp; } ;
struct TYPE_5__ {struct ifnet* rcvif; int flowid; scalar_t__ len; } ;
struct TYPE_4__ {scalar_t__ ext_size; int ext_buf; } ;
struct mbuf {TYPE_2__ m_pkthdr; scalar_t__ m_len; int m_flags; TYPE_1__ m_ext; int m_data; } ;
struct ifnet {int if_vnet; } ;
struct TYPE_6__ {int (* if_transmit ) (struct ifnet*,struct mbuf*) ;} ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int MBUF_REFCNT (struct mbuf*) ;
 int M_HASHTYPE_OPAQUE ;
 int M_HASHTYPE_SET (struct mbuf*,int ) ;
 int M_PKTHDR ;
 TYPE_3__* NA (struct ifnet*) ;
 int SET_MBUF_REFCNT (struct mbuf*,int) ;
 int bcopy (int ,int ,scalar_t__) ;
 int nm_prerr (char*,int,struct mbuf*) ;
 int nm_prlim (int,char*,scalar_t__,scalar_t__) ;
 int panic (char*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

int
nm_os_generic_xmit_frame(struct nm_os_gen_arg *a)
{
 int ret;
 u_int len = a->len;
 struct ifnet *ifp = a->ifp;
 struct mbuf *m = a->m;






 if (MBUF_REFCNT(m) != 1) {
  nm_prerr("invalid refcnt %d for %p", MBUF_REFCNT(m), m);
  panic("in generic_xmit_frame");
 }
 if (m->m_ext.ext_size < len) {
  nm_prlim(2, "size %d < len %d", m->m_ext.ext_size, len);
  len = m->m_ext.ext_size;
 }
 bcopy(a->addr, m->m_data, len);







 m->m_flags |= M_PKTHDR;
 m->m_len = m->m_pkthdr.len = len;



 SET_MBUF_REFCNT(m, 2);
 M_HASHTYPE_SET(m, M_HASHTYPE_OPAQUE);
 m->m_pkthdr.flowid = a->ring_nr;
 m->m_pkthdr.rcvif = ifp;
 CURVNET_SET(ifp->if_vnet);
 ret = NA(ifp)->if_transmit(ifp, m);
 CURVNET_RESTORE();
 return ret ? -1 : 0;
}
