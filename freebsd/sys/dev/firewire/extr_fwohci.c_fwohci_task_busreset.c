
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * config_rom; } ;
struct fwohci_softc {TYPE_1__ fc; } ;


 int FWBUSRESET ;
 int FW_GLOCK (TYPE_1__*) ;
 int FW_GUNLOCK (TYPE_1__*) ;
 int OHCI_BUS_OPT ;
 int OHCI_CROMHDR ;
 int OWRITE (struct fwohci_softc*,int ,int ) ;
 int fw_busreset (TYPE_1__*,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static void
fwohci_task_busreset(void *arg, int pending)
{
 struct fwohci_softc *sc = (struct fwohci_softc *)arg;

 FW_GLOCK(&sc->fc);
 fw_busreset(&sc->fc, FWBUSRESET);
 OWRITE(sc, OHCI_CROMHDR, ntohl(sc->fc.config_rom[0]));
 OWRITE(sc, OHCI_BUS_OPT, ntohl(sc->fc.config_rom[2]));
 FW_GUNLOCK(&sc->fc);
}
