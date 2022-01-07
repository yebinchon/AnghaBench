
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct my_softc {int my_dev; } ;
struct my_chain_onefrag {TYPE_1__* my_ptr; struct mbuf* my_mbuf; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int my_ctl; int my_status; int my_data; } ;


 int ENOBUFS ;
 int MCLBYTES ;
 int MCLGET (struct mbuf*,int ) ;
 int MGETHDR (struct mbuf*,int ,int ) ;
 int MT_DATA ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int MY_OWNByNIC ;
 int MY_RBSShift ;
 int M_NOWAIT ;
 int caddr_t ;
 int device_printf (int ,char*) ;
 int m_freem (struct mbuf*) ;
 int mtod (struct mbuf*,int ) ;
 int vtophys (int ) ;

__attribute__((used)) static int
my_newbuf(struct my_softc * sc, struct my_chain_onefrag * c)
{
 struct mbuf *m_new = ((void*)0);

 MY_LOCK_ASSERT(sc);
 MGETHDR(m_new, M_NOWAIT, MT_DATA);
 if (m_new == ((void*)0)) {
  device_printf(sc->my_dev,
      "no memory for rx list -- packet dropped!\n");
  return (ENOBUFS);
 }
 if (!(MCLGET(m_new, M_NOWAIT))) {
  device_printf(sc->my_dev,
      "no memory for rx list -- packet dropped!\n");
  m_freem(m_new);
  return (ENOBUFS);
 }
 c->my_mbuf = m_new;
 c->my_ptr->my_data = vtophys(mtod(m_new, caddr_t));
 c->my_ptr->my_ctl = (MCLBYTES - 1) << MY_RBSShift;
 c->my_ptr->my_status = MY_OWNByNIC;
 return (0);
}
