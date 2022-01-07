
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct uninorth_softc {int sc_cfg_mtx; scalar_t__ sc_data; } ;
typedef int device_t ;


 struct uninorth_softc* device_get_softc (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int out16rb (scalar_t__,int ) ;
 int out32rb (scalar_t__,int ) ;
 int out8rb (scalar_t__,int ) ;
 scalar_t__ uninorth_enable_config (struct uninorth_softc*,int,int,int,int) ;

__attribute__((used)) static void
uninorth_write_config(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, u_int32_t val, int width)
{
 struct uninorth_softc *sc;
 vm_offset_t caoff;

 sc = device_get_softc(dev);
 caoff = sc->sc_data + (reg & 0x07);

 mtx_lock_spin(&sc->sc_cfg_mtx);
 if (uninorth_enable_config(sc, bus, slot, func, reg)) {
  switch (width) {
  case 1:
   out8rb(caoff, val);
   break;
  case 2:
   out16rb(caoff, val);
   break;
  case 4:
   out32rb(caoff, val);
   break;
  }
 }
 mtx_unlock_spin(&sc->sc_cfg_mtx);
}
