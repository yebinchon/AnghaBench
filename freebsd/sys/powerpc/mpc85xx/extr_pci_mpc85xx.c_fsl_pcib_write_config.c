
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct fsl_pcib_softc {scalar_t__ sc_busnr; int sc_pcie; } ;
typedef int device_t ;


 struct fsl_pcib_softc* device_get_softc (int ) ;
 int fsl_pcib_cfgwrite (struct fsl_pcib_softc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int) ;

__attribute__((used)) static void
fsl_pcib_write_config(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, uint32_t val, int bytes)
{
 struct fsl_pcib_softc *sc = device_get_softc(dev);

 if (bus == sc->sc_busnr && !sc->sc_pcie && slot < 10)
  return;
 fsl_pcib_cfgwrite(sc, bus, slot, func, reg, val, bytes);
}
