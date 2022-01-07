
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snps_softc {int * reset; int * apb_pclk; int * baudclk; } ;
typedef int * hwreset_t ;
typedef int device_t ;
typedef int * clk_t ;


 int clk_release (int *) ;
 struct snps_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_assert (int *) ;
 int hwreset_release (int *) ;
 int uart_bus_detach (int ) ;

__attribute__((used)) static int
snps_detach(device_t dev)
{





 int error;
 error = uart_bus_detach(dev);
 if (error != 0)
  return (error);
 return (0);
}
