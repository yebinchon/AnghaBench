
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twsi_softc {int need_ack; int reg_soft_reset; int reg_baud_rate; int reg_status; int reg_control; int reg_slave_ext_addr; int reg_slave_addr; int reg_data; int clk_core; } ;
typedef int hwreset_t ;
typedef int device_t ;


 int TWI_ADDR ;
 int TWI_CCR ;
 int TWI_CNTR ;
 int TWI_DATA ;
 int TWI_SRST ;
 int TWI_STAT ;
 int TWI_XADDR ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_index (int ,int ,int ,int *) ;
 struct twsi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_deassert (int ) ;
 scalar_t__ hwreset_get_by_ofw_idx (int ,int ,int ,int *) ;
 int twsi_attach (int ) ;

__attribute__((used)) static int
a10_twsi_attach(device_t dev)
{
 struct twsi_softc *sc;
 hwreset_t rst;
 int error;

 sc = device_get_softc(dev);


 if (hwreset_get_by_ofw_idx(dev, 0, 0, &rst) == 0) {
  error = hwreset_deassert(rst);
  if (error != 0) {
   device_printf(dev, "could not de-assert reset\n");
   return (error);
  }
 }


 error = clk_get_by_ofw_index(dev, 0, 0, &sc->clk_core);
 if (error != 0) {
  device_printf(dev, "could not find clock\n");
  return (error);
 }
 error = clk_enable(sc->clk_core);
 if (error != 0) {
  device_printf(dev, "could not enable clock\n");
  return (error);
 }

 sc->reg_data = TWI_DATA;
 sc->reg_slave_addr = TWI_ADDR;
 sc->reg_slave_ext_addr = TWI_XADDR;
 sc->reg_control = TWI_CNTR;
 sc->reg_status = TWI_STAT;
 sc->reg_baud_rate = TWI_CCR;
 sc->reg_soft_reset = TWI_SRST;

 sc->need_ack = 1;
 return (twsi_attach(dev));
}
