
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_class; } ;
struct acpi_uart_compat_data {int cd_quirks; int cd_rclk; int cd_regiowidth; int cd_regshft; int * cd_desc; int cd_class; } ;
typedef int device_t ;


 int ENXIO ;
 struct uart_softc* device_get_softc (int ) ;
 int device_set_desc (int ,int *) ;
 struct acpi_uart_compat_data* uart_acpi_find_device (int ) ;
 int uart_bus_probe (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
uart_acpi_probe(device_t dev)
{
 struct uart_softc *sc;
 struct acpi_uart_compat_data *cd;

 sc = device_get_softc(dev);

 if ((cd = uart_acpi_find_device(dev)) != ((void*)0)) {
  sc->sc_class = cd->cd_class;
  if (cd->cd_desc != ((void*)0))
   device_set_desc(dev, cd->cd_desc);
  return (uart_bus_probe(dev, cd->cd_regshft, cd->cd_regiowidth,
      cd->cd_rclk, 0, 0, cd->cd_quirks));
 }
 return (ENXIO);
}
