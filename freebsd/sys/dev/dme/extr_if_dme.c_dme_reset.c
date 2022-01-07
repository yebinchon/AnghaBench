
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct dme_softc {scalar_t__ dme_txready; scalar_t__ dme_txbusy; TYPE_1__* dme_ifp; int dme_dev; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int DELAY (int) ;
 int DME_NCR ;
 int DTR3 (char*,int ,scalar_t__,scalar_t__) ;
 int NCR_LBK_MAC ;
 int NCR_RST ;
 int device_printf (int ,char*) ;
 int dme_read_reg (struct dme_softc*,int ) ;
 int dme_write_reg (struct dme_softc*,int ,int) ;

__attribute__((used)) static void
dme_reset(struct dme_softc *sc)
{
 u_int ncr;


 dme_write_reg(sc, DME_NCR, NCR_RST | NCR_LBK_MAC);
 DELAY(100);
 ncr = dme_read_reg(sc, DME_NCR);
 if (ncr & NCR_RST)
  device_printf(sc->dme_dev, "device did not complete first reset\n");


 dme_write_reg(sc, DME_NCR, 0);
 dme_write_reg(sc, DME_NCR, NCR_RST | NCR_LBK_MAC);
 DELAY(100);
 ncr = dme_read_reg(sc, DME_NCR);
 if (ncr & NCR_RST)
  device_printf(sc->dme_dev, "device did not complete second reset\n");


 sc->dme_txbusy = 0;
 sc->dme_txready = 0;

 DTR3("dme_reset, flags %#x busy %d ready %d",
     sc->dme_ifp ? sc->dme_ifp->if_drv_flags : 0,
     sc->dme_txbusy, sc->dme_txready);
}
