
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ len; TYPE_2__* rcvif; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; int m_data; } ;
struct gx_softc {TYPE_2__* sc_ifp; int sc_dev; } ;
struct TYPE_5__ {int (* if_input ) (TYPE_2__*,struct mbuf*) ;} ;


 scalar_t__ ETHER_ALIGN ;
 int GXEMUL_ETHER_DEV_BUFFER ;
 int GXEMUL_ETHER_DEV_COMMAND ;
 int GXEMUL_ETHER_DEV_COMMAND_RX ;
 scalar_t__ GXEMUL_ETHER_DEV_FUNCTION (int ) ;
 int GXEMUL_ETHER_DEV_LENGTH ;
 scalar_t__ GXEMUL_ETHER_DEV_READ (int ) ;
 int GXEMUL_ETHER_DEV_STATUS ;
 scalar_t__ GXEMUL_ETHER_DEV_STATUS_RX_MORE ;
 scalar_t__ GXEMUL_ETHER_DEV_STATUS_RX_OK ;
 int GXEMUL_ETHER_DEV_WRITE (int ,int ) ;
 int GXEMUL_ETHER_LOCK (struct gx_softc*) ;
 int GXEMUL_ETHER_UNLOCK (struct gx_softc*) ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 scalar_t__ MCLBYTES ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int device_printf (int ,char*) ;
 int if_inc_counter (TYPE_2__*,int ,int) ;
 struct mbuf* m_getcl (int ,int ,int ) ;
 int memcpy (int ,void const*,scalar_t__) ;
 int stub1 (TYPE_2__*,struct mbuf*) ;

__attribute__((used)) static void
gx_rx_intr(void *arg)
{
 struct gx_softc *sc = arg;

 GXEMUL_ETHER_LOCK(sc);
 for (;;) {
  uint64_t status, length;
  struct mbuf *m;





  status = GXEMUL_ETHER_DEV_READ(GXEMUL_ETHER_DEV_STATUS);
  if (status == GXEMUL_ETHER_DEV_STATUS_RX_MORE) {
   GXEMUL_ETHER_DEV_WRITE(GXEMUL_ETHER_DEV_COMMAND, GXEMUL_ETHER_DEV_COMMAND_RX);
   continue;
  }
  if (status != GXEMUL_ETHER_DEV_STATUS_RX_OK)
   break;
  length = GXEMUL_ETHER_DEV_READ(GXEMUL_ETHER_DEV_LENGTH);
  if (length > MCLBYTES - ETHER_ALIGN) {
   if_inc_counter(sc->sc_ifp, IFCOUNTER_IERRORS, 1);
   continue;
  }

  m = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR);
  if (m == ((void*)0)) {
   device_printf(sc->sc_dev, "no memory for receive mbuf.\n");
   if_inc_counter(sc->sc_ifp, IFCOUNTER_IQDROPS, 1);
   GXEMUL_ETHER_UNLOCK(sc);
   return;
  }


  m->m_data += ETHER_ALIGN;

  memcpy(m->m_data, (const void *)(uintptr_t)GXEMUL_ETHER_DEV_FUNCTION(GXEMUL_ETHER_DEV_BUFFER), length);

  m->m_pkthdr.rcvif = sc->sc_ifp;
  m->m_pkthdr.len = m->m_len = length;

  if_inc_counter(sc->sc_ifp, IFCOUNTER_IPACKETS, 1);

  GXEMUL_ETHER_UNLOCK(sc);

  (*sc->sc_ifp->if_input)(sc->sc_ifp, m);

  GXEMUL_ETHER_LOCK(sc);
 }
 GXEMUL_ETHER_UNLOCK(sc);
}
