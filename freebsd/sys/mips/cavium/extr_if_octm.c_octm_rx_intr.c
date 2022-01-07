
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct octm_softc {int sc_port; TYPE_4__* sc_ifp; int sc_dev; } ;
struct TYPE_7__ {int len; TYPE_4__* rcvif; } ;
struct mbuf {int m_len; TYPE_2__ m_pkthdr; int m_data; } ;
struct TYPE_6__ {int irthresh; } ;
struct TYPE_8__ {int u64; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_mixx_isr_t ;
struct TYPE_9__ {int (* if_input ) (TYPE_4__*,struct mbuf*) ;} ;


 int CVMX_MIXX_ISR (int ) ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int MCLBYTES ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int cvmx_mgmt_port_receive (int ,int ,int ) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 int device_printf (int ,char*) ;
 int if_inc_counter (TYPE_4__*,int ,int) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getcl (int ,int ,int ) ;
 int stub1 (TYPE_4__*,struct mbuf*) ;

__attribute__((used)) static void
octm_rx_intr(void *arg)
{
 struct octm_softc *sc = arg;
 cvmx_mixx_isr_t mixx_isr;
 int len;

 mixx_isr.u64 = cvmx_read_csr(CVMX_MIXX_ISR(sc->sc_port));
 if (!mixx_isr.s.irthresh) {
  device_printf(sc->sc_dev, "stray interrupt.\n");
  return;
 }

 for (;;) {
  struct mbuf *m = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR);
  if (m == ((void*)0)) {
   device_printf(sc->sc_dev, "no memory for receive mbuf.\n");
   return;
  }


  len = cvmx_mgmt_port_receive(sc->sc_port, MCLBYTES, m->m_data);
  if (len > 0) {
   m->m_pkthdr.rcvif = sc->sc_ifp;
   m->m_pkthdr.len = m->m_len = len;

   if_inc_counter(sc->sc_ifp, IFCOUNTER_IPACKETS, 1);

   (*sc->sc_ifp->if_input)(sc->sc_ifp, m);

   continue;
  }

  m_freem(m);

  if (len == 0)
   break;

  if_inc_counter(sc->sc_ifp, IFCOUNTER_IERRORS, 1);
 }


 cvmx_write_csr(CVMX_MIXX_ISR(sc->sc_port), mixx_isr.u64);
 cvmx_read_csr(CVMX_MIXX_ISR(sc->sc_port));
}
