
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wb_softc {int chip; int ctl_reg; int time_reg; int csr_reg; int reg_1; int reg_timeout; int reg_2; unsigned long timeout_override; int ev_tag; int debug_verbose; int dev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLFLAG_SKIP ;
 int CTLTYPE_INT ;
 int CTLTYPE_STRING ;
 int EVENTHANDLER_REGISTER (int ,int ,struct wb_softc*,int ) ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct wb_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int,unsigned long*,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 scalar_t__ TUNABLE_ULONG_FETCH (char*,unsigned long*) ;
 int WB_LDN8_CR30_ACTIVE ;
 int WB_LDN8_CRF5_KBRST ;
 int WB_LDN8_CRF5_KEYB_P20 ;
 int WB_LDN8_CRF7_MOUSE ;
 int WB_LDN8_CRF7_TS ;
 scalar_t__ bootverbose ;
 struct wb_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int superio_dev_enable (int ,int ) ;
 int superio_read (int ,int) ;
 int superio_write (int ,int,int) ;
 int sysctl_wb_debug ;
 int sysctl_wb_debug_current ;
 int sysctl_wb_force_test_nmi ;
 int watchdog_list ;
 int wb_print_state (struct wb_softc*,char*) ;
 int wb_watchdog_fn ;

__attribute__((used)) static int
wb_attach(device_t dev)
{
 struct wb_softc *sc;
 struct sysctl_ctx_list *sctx;
 struct sysctl_oid *soid;
 unsigned long timeout;
 uint8_t t;

 sc = device_get_softc(dev);
 sc->dev = dev;


 superio_dev_enable(dev, WB_LDN8_CR30_ACTIVE);

 switch (sc->chip) {
 case 129:
 case 128:
  sc->ctl_reg = 0xf3;
  sc->time_reg = 0xf4;
  sc->csr_reg = 0xf7;
  break;
 case 148:
  sc->ctl_reg = 0xf0;
  sc->time_reg = 0xf1;
  sc->csr_reg = 0xf2;
  break;
 default:
  sc->ctl_reg = 0xf5;
  sc->time_reg = 0xf6;
  sc->csr_reg = 0xf7;
  break;
 }

 switch (sc->chip) {
 case 137:
 case 136:
  t = superio_read(dev, 0x2B) & ~0x10;
  superio_write(dev, 0x2B, t);
  break;
 case 129:

  t = superio_read(dev, 0x29) & ~0x60;
  t |= 0x20;
  superio_write(dev, 0x29, t);
  break;
 case 128:

  t = superio_read(dev, 0x2b) & ~0x04;
  superio_write(dev, 0x2b, t);
  break;
 case 135:
  t = (superio_read(dev, 0x2B) & ~0x08) | 0x04;
  superio_write(dev, 0x2B, t);
  break;
 case 140:
 case 139:
  t = superio_read(dev, 0x2D) & ~0x01;
  superio_write(dev, 0x2D, t);
  t = superio_read(dev, sc->ctl_reg);
  t |= 0x02;

  superio_write(dev, sc->ctl_reg, t);
  break;
 case 133:
  break;
 case 130:
  t = superio_read(dev, 0x2C) & ~0x80;
  superio_write(dev, 0x2C, t);
  break;
 case 138:
 case 134:
 case 132:
 case 131:
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 148:






  t = superio_read(dev, sc->ctl_reg);
  t |= 0x02;

  superio_write(dev, sc->ctl_reg, t);
  break;
 default:
  break;
 }


 sc->reg_1 = superio_read(dev, sc->ctl_reg);
 sc->reg_timeout = superio_read(dev, sc->time_reg);
 sc->reg_2 = superio_read(dev, sc->csr_reg);


 if (bootverbose || (sc->reg_timeout > 0x00))
  wb_print_state(sc, "Before watchdog attach");

 sc->reg_1 &= ~WB_LDN8_CRF5_KEYB_P20;
 sc->reg_1 |= WB_LDN8_CRF5_KBRST;
 superio_write(dev, sc->ctl_reg, sc->reg_1);






 sc->reg_2 &= ~(WB_LDN8_CRF7_MOUSE|WB_LDN8_CRF7_TS);
 superio_write(dev, sc->csr_reg, sc->reg_2);


 if (TUNABLE_ULONG_FETCH("hw.wbwd.timeout_override", &timeout)) {
  if (timeout > 0)
   sc->timeout_override = timeout;
 }
 sctx = device_get_sysctl_ctx(dev);
 soid = device_get_sysctl_tree(dev);
        SYSCTL_ADD_UINT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO,
     "timeout_override", CTLFLAG_RW, &sc->timeout_override, 0,
            "Timeout in seconds overriding default watchdog timeout");
        SYSCTL_ADD_INT(sctx, SYSCTL_CHILDREN(soid), OID_AUTO,
     "debug_verbose", CTLFLAG_RW, &sc->debug_verbose, 0,
            "Enables extra debugging information");
        SYSCTL_ADD_PROC(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "debug",
     CTLTYPE_STRING|CTLFLAG_RD, sc, 0, sysctl_wb_debug, "A",
            "Selected register information from last change by driver");
        SYSCTL_ADD_PROC(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "debug_current",
     CTLTYPE_STRING|CTLFLAG_RD|CTLFLAG_SKIP, sc, 0,
      sysctl_wb_debug_current, "A",
      "Selected register information (may interfere)");
 SYSCTL_ADD_PROC(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "force_timeout",
     CTLTYPE_INT|CTLFLAG_RW|CTLFLAG_SKIP, sc, 0,
     sysctl_wb_force_test_nmi, "I", "Enable to force watchdog to fire.");


 sc->ev_tag = EVENTHANDLER_REGISTER(watchdog_list, wb_watchdog_fn, sc,
     0);

 if (bootverbose)
  wb_print_state(sc, "After watchdog attach");

 return (0);
}
