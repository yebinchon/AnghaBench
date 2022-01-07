
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* mtkswitch_read ) (struct mtkswitch_softc*,int ) ;int (* mtkswitch_write ) (struct mtkswitch_softc*,int ,int) ;} ;
struct mtkswitch_softc {int cpuport; TYPE_1__ hal; } ;


 int MTKSWITCH_PCR (int) ;
 int MTKSWITCH_PMCR (int) ;
 int MTKSWITCH_PVC (int) ;
 int PCR_PORT_VLAN_SECURE ;
 int PMCR_CFG_DEFAULT ;
 int PMCR_FORCE_DPX ;
 int PMCR_FORCE_LINK ;
 int PMCR_FORCE_MODE ;
 int PMCR_FORCE_SPD_1000 ;
 int PVC_VLAN_ATTR_MASK ;
 int stub1 (struct mtkswitch_softc*,int ) ;
 int stub2 (struct mtkswitch_softc*,int ,int) ;
 int stub3 (struct mtkswitch_softc*,int ) ;
 int stub4 (struct mtkswitch_softc*,int ,int) ;
 int stub5 (struct mtkswitch_softc*,int ,int) ;

__attribute__((used)) static void
mtkswitch_port_init(struct mtkswitch_softc *sc, int port)
{
 uint32_t val;




 val = sc->hal.mtkswitch_read(sc, MTKSWITCH_PCR(port));
 val |= PCR_PORT_VLAN_SECURE;
 sc->hal.mtkswitch_write(sc, MTKSWITCH_PCR(port), val);


 val = sc->hal.mtkswitch_read(sc, MTKSWITCH_PVC(port));
 val &= ~PVC_VLAN_ATTR_MASK;
 sc->hal.mtkswitch_write(sc, MTKSWITCH_PVC(port), val);

 val = PMCR_CFG_DEFAULT;
 if (port == sc->cpuport)
  val |= PMCR_FORCE_LINK | PMCR_FORCE_DPX | PMCR_FORCE_SPD_1000 |
      PMCR_FORCE_MODE;

 sc->hal.mtkswitch_write(sc, MTKSWITCH_PMCR(port), val);
}
