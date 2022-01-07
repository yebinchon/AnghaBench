
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int * config_rom; } ;
struct fwohci_softc {TYPE_1__ fc; } ;
struct firewire_comm {int dev; } ;


 int FW_GLOCK (struct firewire_comm*) ;
 int FW_GUNLOCK (struct firewire_comm*) ;
 int FW_PHY_IBR ;
 int FW_PHY_IBR_REG ;
 int FW_PHY_ISBR ;
 int FW_PHY_ISBR_REG ;
 int FW_PHY_RHB ;
 int OHCI_BUS_OPT ;
 int OHCI_CROMHDR ;
 int OWRITE (struct fwohci_softc*,int ,int ) ;
 int device_printf (int ,char*) ;
 int fwphy_rddata (struct fwohci_softc*,int ) ;
 int fwphy_wrdata (struct fwohci_softc*,int ,int) ;
 int ntohl (int ) ;

void
fwohci_ibr(struct firewire_comm *fc)
{
 struct fwohci_softc *sc;
 uint32_t fun;

 device_printf(fc->dev, "Initiate bus reset\n");
 sc = (struct fwohci_softc *)fc;

 FW_GLOCK(fc);




 OWRITE(sc, OHCI_CROMHDR, ntohl(sc->fc.config_rom[0]));
 OWRITE(sc, OHCI_BUS_OPT, ntohl(sc->fc.config_rom[2]));






 fun = fwphy_rddata(sc, FW_PHY_IBR_REG);
 fun |= FW_PHY_IBR | FW_PHY_RHB;
 fun = fwphy_wrdata(sc, FW_PHY_IBR_REG, fun);





 FW_GUNLOCK(fc);
}
