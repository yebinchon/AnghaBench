
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int dev; } ;
typedef int device_t ;


 int bus_timing_normal ;
 int bus_width_1 ;
 int cs_dontcare ;
 int mmcbr_set_bus_mode (int ,int ) ;
 int mmcbr_set_bus_width (int ,int ) ;
 int mmcbr_set_chip_select (int ,int ) ;
 int mmcbr_set_clock (int ,int ) ;
 int mmcbr_set_power_mode (int ,int ) ;
 int mmcbr_set_timing (int ,int ) ;
 int mmcbr_update_ios (int ) ;
 int opendrain ;
 int power_off ;

__attribute__((used)) static void
mmc_power_down(struct mmc_softc *sc)
{
 device_t dev = sc->dev;

 mmcbr_set_bus_mode(dev, opendrain);
 mmcbr_set_chip_select(dev, cs_dontcare);
 mmcbr_set_bus_width(dev, bus_width_1);
 mmcbr_set_power_mode(dev, power_off);
 mmcbr_set_clock(dev, 0);
 mmcbr_set_timing(dev, bus_timing_normal);
 mmcbr_update_ios(dev);
}
