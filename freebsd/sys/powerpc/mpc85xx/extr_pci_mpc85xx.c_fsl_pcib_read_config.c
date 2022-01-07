
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct fsl_pcib_softc {scalar_t__ sc_busnr; int sc_pcie; } ;
typedef int device_t ;


 scalar_t__ DEVFN (scalar_t__,scalar_t__,scalar_t__) ;
 struct fsl_pcib_softc* device_get_softc (int ) ;
 int fsl_pcib_cfgread (struct fsl_pcib_softc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static uint32_t
fsl_pcib_read_config(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, int bytes)
{
 struct fsl_pcib_softc *sc = device_get_softc(dev);
 u_int devfn;

 if (bus == sc->sc_busnr && !sc->sc_pcie && slot < 10)
  return (~0);
 devfn = DEVFN(bus, slot, func);

 return (fsl_pcib_cfgread(sc, bus, slot, func, reg, bytes));
}
