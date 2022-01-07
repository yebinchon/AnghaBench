
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct ig4_hw {scalar_t__ txfifo_depth; scalar_t__ rxfifo_depth; } ;
struct TYPE_6__ {int version; int bus_speed; int ss_scl_hcnt; int ss_scl_lcnt; int fs_scl_hcnt; int fs_scl_lcnt; int ss_sda_hold; int fs_sda_hold; int txfifo_depth; int rxfifo_depth; } ;
struct TYPE_7__ {size_t version; TYPE_1__ cfg; int dev; } ;
typedef TYPE_2__ ig4iic_softc_t ;
typedef int * ACPI_HANDLE ;


 size_t IG4_ATOM ;
 void* IG4_CTL_SPEED_FAST ;
 int IG4_CTL_SPEED_MASK ;
 void* IG4_CTL_SPEED_STD ;
 int IG4_FIFO_MASK ;
 size_t IG4_HASWELL ;
 scalar_t__ IG4_PARAM1_RXFIFO_DEPTH (int) ;
 scalar_t__ IG4_PARAM1_TXFIFO_DEPTH (int) ;
 int IG4_REG_COMP_PARAM1 ;
 int IG4_REG_COMP_VER ;
 int IG4_REG_CTL ;
 int IG4_REG_FS_SCL_HCNT ;
 int IG4_REG_FS_SCL_LCNT ;
 int IG4_REG_RX_TL ;
 int IG4_REG_SDA_HOLD ;
 int IG4_REG_SS_SCL_HCNT ;
 int IG4_REG_SS_SCL_LCNT ;
 int IG4_REG_TX_TL ;
 int IG4_SCL_CLOCK_MASK ;
 int IG4_SDA_TX_HOLD_MASK ;
 size_t IG4_SKYLAKE ;
 int * acpi_get_handle (int ) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 int ig4_timings ;
 int ig4iic_acpi_params (int *,char*,int*,int*,int*) ;
 int ig4iic_clk_params (struct ig4_hw const*,void*,int*,int*,int*) ;
 struct ig4_hw* ig4iic_hw ;
 size_t nitems (struct ig4_hw*) ;
 int printf (char*,...) ;
 int reg_read (TYPE_2__*,int ) ;
 int reg_write (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
ig4iic_get_config(ig4iic_softc_t *sc)
{
 const struct ig4_hw *hw;
 uint32_t v;




 sc->cfg.version = reg_read(sc, IG4_REG_COMP_VER);
 sc->cfg.bus_speed = reg_read(sc, IG4_REG_CTL) & IG4_CTL_SPEED_MASK;
 sc->cfg.ss_scl_hcnt =
     reg_read(sc, IG4_REG_SS_SCL_HCNT) & IG4_SCL_CLOCK_MASK;
 sc->cfg.ss_scl_lcnt =
     reg_read(sc, IG4_REG_SS_SCL_LCNT) & IG4_SCL_CLOCK_MASK;
 sc->cfg.fs_scl_hcnt =
     reg_read(sc, IG4_REG_FS_SCL_HCNT) & IG4_SCL_CLOCK_MASK;
 sc->cfg.fs_scl_lcnt =
     reg_read(sc, IG4_REG_FS_SCL_LCNT) & IG4_SCL_CLOCK_MASK;
 sc->cfg.ss_sda_hold = sc->cfg.fs_sda_hold =
     reg_read(sc, IG4_REG_SDA_HOLD) & IG4_SDA_TX_HOLD_MASK;

 if (sc->cfg.bus_speed != IG4_CTL_SPEED_STD)
  sc->cfg.bus_speed = IG4_CTL_SPEED_FAST;


 if (sc->version == IG4_HASWELL || sc->version == IG4_ATOM) {
  v = reg_read(sc, IG4_REG_COMP_PARAM1);
  if (IG4_PARAM1_TXFIFO_DEPTH(v) != 0)
   sc->cfg.txfifo_depth = IG4_PARAM1_TXFIFO_DEPTH(v);
  if (IG4_PARAM1_RXFIFO_DEPTH(v) != 0)
   sc->cfg.rxfifo_depth = IG4_PARAM1_RXFIFO_DEPTH(v);
 } else {






  v = reg_read(sc, IG4_REG_TX_TL);
  reg_write(sc, IG4_REG_TX_TL, v | IG4_FIFO_MASK);
  sc->cfg.txfifo_depth =
      (reg_read(sc, IG4_REG_TX_TL) & IG4_FIFO_MASK) + 1;
  reg_write(sc, IG4_REG_TX_TL, v);
  v = reg_read(sc, IG4_REG_RX_TL);
  reg_write(sc, IG4_REG_RX_TL, v | IG4_FIFO_MASK);
  sc->cfg.rxfifo_depth =
      (reg_read(sc, IG4_REG_RX_TL) & IG4_FIFO_MASK) + 1;
  reg_write(sc, IG4_REG_RX_TL, v);
 }


 if (ig4_timings < 2 && sc->version < nitems(ig4iic_hw)) {
  hw = &ig4iic_hw[sc->version];
  sc->cfg.bus_speed = IG4_CTL_SPEED_FAST;
  ig4iic_clk_params(hw, IG4_CTL_SPEED_STD, &sc->cfg.ss_scl_hcnt,
      &sc->cfg.ss_scl_lcnt, &sc->cfg.ss_sda_hold);
  ig4iic_clk_params(hw, IG4_CTL_SPEED_FAST, &sc->cfg.fs_scl_hcnt,
      &sc->cfg.fs_scl_lcnt, &sc->cfg.fs_sda_hold);
  if (hw->txfifo_depth != 0)
   sc->cfg.txfifo_depth = hw->txfifo_depth;
  if (hw->rxfifo_depth != 0)
   sc->cfg.rxfifo_depth = hw->rxfifo_depth;
 } else if (ig4_timings == 2) {
  sc->cfg.bus_speed = IG4_CTL_SPEED_STD;
  sc->cfg.ss_scl_hcnt = sc->cfg.fs_scl_hcnt = 100;
  sc->cfg.ss_scl_lcnt = sc->cfg.fs_scl_lcnt = 125;
  if (sc->version == IG4_SKYLAKE)
   sc->cfg.ss_sda_hold = sc->cfg.fs_sda_hold = 28;
 }
 if (bootverbose) {
  device_printf(sc->dev, "Controller parameters:\n");
  printf("  Speed: %s\n",
      sc->cfg.bus_speed == IG4_CTL_SPEED_STD ? "Std" : "Fast");
  printf("  Regs:  HCNT  :LCNT  :SDAHLD\n");
  printf("  Std:   0x%04hx:0x%04hx:0x%04hx\n",
      sc->cfg.ss_scl_hcnt, sc->cfg.ss_scl_lcnt,
      sc->cfg.ss_sda_hold);
  printf("  Fast:  0x%04hx:0x%04hx:0x%04hx\n",
      sc->cfg.fs_scl_hcnt, sc->cfg.fs_scl_lcnt,
      sc->cfg.fs_sda_hold);
  printf("  FIFO:  RX:0x%04x: TX:0x%04x\n",
      sc->cfg.rxfifo_depth, sc->cfg.txfifo_depth);
 }
}
