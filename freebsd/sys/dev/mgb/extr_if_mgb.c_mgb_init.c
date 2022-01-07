
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct mgb_softc {int dev; int miibus; } ;
typedef int if_ctx_t ;


 int CSR_CLEAR_REG (struct mgb_softc*,int ,int ) ;
 int CSR_UPDATE_REG (struct mgb_softc*,int ,int) ;
 int KASSERT (int,char*) ;
 int MGB_RFE_ALLOW_BROADCAST ;
 int MGB_RFE_ALLOW_PERFECT_FILTER ;
 int MGB_RFE_ALLOW_UNICAST ;
 int MGB_RFE_CTL ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 struct mgb_softc* iflib_get_softc (int ) ;
 int mgb_dma_init (struct mgb_softc*) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static void
mgb_init(if_ctx_t ctx)
{
 struct mgb_softc *sc;
 struct mii_data *miid;
 int error;

 sc = iflib_get_softc(ctx);
 miid = device_get_softc(sc->miibus);
 device_printf(sc->dev, "running init ...\n");

 mgb_dma_init(sc);


 CSR_CLEAR_REG(sc, MGB_RFE_CTL, MGB_RFE_ALLOW_PERFECT_FILTER);
 CSR_UPDATE_REG(sc, MGB_RFE_CTL,
     MGB_RFE_ALLOW_BROADCAST |
     MGB_RFE_ALLOW_UNICAST |
     MGB_RFE_ALLOW_UNICAST);

 error = mii_mediachg(miid);
 KASSERT(!error, ("mii_mediachg returned: %d", error));
}
