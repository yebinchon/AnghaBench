
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_softc {int reg_timeout; int reg_2; int reg_1; int csr_reg; int ctl_reg; int dev; } ;


 int WB_LDN8_CRF5_SCALE ;
 int WB_LDN8_CRF7_TS ;
 int device_printf (int ,char*,char const*,char*,char*,char*,int,int,char*,int,char*,int ,int,int ,int) ;

__attribute__((used)) static void
wb_print_state(struct wb_softc *sc, const char *msg)
{

 device_printf(sc->dev, "%s%sWatchdog %sabled. %s"
     "Scaling by %ds, timer at %d (%s=%ds%s). "
     "CR%02X 0x%02x CR%02X 0x%02x\n",
     (msg != ((void*)0)) ? msg : "", (msg != ((void*)0)) ? ": " : "",
     (sc->reg_timeout > 0x00) ? "en" : "dis",
     (sc->reg_2 & WB_LDN8_CRF7_TS) ? "Watchdog fired. " : "",
     (sc->reg_1 & WB_LDN8_CRF5_SCALE) ? 60 : 1,
     sc->reg_timeout,
     (sc->reg_timeout > 0x00) ? "<" : "",
     sc->reg_timeout * ((sc->reg_1 & WB_LDN8_CRF5_SCALE) ? 60 : 1),
     (sc->reg_timeout > 0x00) ? " left" : "",
     sc->ctl_reg, sc->reg_1, sc->csr_reg, sc->reg_2);
}
