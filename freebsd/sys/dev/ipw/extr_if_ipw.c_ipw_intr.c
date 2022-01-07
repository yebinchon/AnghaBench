
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipw_softc {int dummy; } ;


 int CSR_READ_4 (struct ipw_softc*,int ) ;
 int CSR_WRITE_4 (struct ipw_softc*,int ,int) ;
 int IPW_CSR_INTR ;
 int IPW_CSR_INTR_MASK ;
 int IPW_INTR_FATAL_ERROR ;
 int IPW_INTR_FW_INIT_DONE ;
 int IPW_INTR_MASK ;
 int IPW_INTR_PARITY_ERROR ;
 int IPW_INTR_RX_TRANSFER ;
 int IPW_INTR_TX_TRANSFER ;
 int IPW_LOCK (struct ipw_softc*) ;
 int IPW_UNLOCK (struct ipw_softc*) ;
 int ipw_fatal_error_intr (struct ipw_softc*) ;
 int ipw_rx_intr (struct ipw_softc*) ;
 int ipw_tx_intr (struct ipw_softc*) ;
 int wakeup (struct ipw_softc*) ;

__attribute__((used)) static void
ipw_intr(void *arg)
{
 struct ipw_softc *sc = arg;
 uint32_t r;

 IPW_LOCK(sc);

 r = CSR_READ_4(sc, IPW_CSR_INTR);
 if (r == 0 || r == 0xffffffff)
  goto done;


 CSR_WRITE_4(sc, IPW_CSR_INTR_MASK, 0);


 CSR_WRITE_4(sc, IPW_CSR_INTR, r);

 if (r & (IPW_INTR_FATAL_ERROR | IPW_INTR_PARITY_ERROR)) {
  ipw_fatal_error_intr(sc);
  goto done;
 }

 if (r & IPW_INTR_FW_INIT_DONE)
  wakeup(sc);

 if (r & IPW_INTR_RX_TRANSFER)
  ipw_rx_intr(sc);

 if (r & IPW_INTR_TX_TRANSFER)
  ipw_tx_intr(sc);


 CSR_WRITE_4(sc, IPW_CSR_INTR_MASK, IPW_INTR_MASK);
done:
 IPW_UNLOCK(sc);
}
