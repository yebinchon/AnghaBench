
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct imx_usbmisc_softc {int mmio; } ;
typedef int device_t ;


 int bus_read_4 (int ,int) ;
 int bus_write_4 (int ,int,int) ;
 struct imx_usbmisc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
imx_usbmisc_set_ctrl(device_t dev, u_int index, uint32_t bits)
{
 struct imx_usbmisc_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);
 reg = bus_read_4(sc->mmio, index * sizeof(uint32_t));
 bus_write_4(sc->mmio, index * sizeof(uint32_t), reg | bits);
}
