
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct grackle_softc {scalar_t__ sc_data; } ;
typedef int device_t ;


 struct grackle_softc* device_get_softc (int ) ;
 int grackle_disable_config (struct grackle_softc*) ;
 scalar_t__ grackle_enable_config (struct grackle_softc*,int,int,int,int) ;
 int in16rb (scalar_t__) ;
 int in32rb (scalar_t__) ;
 int in8rb (scalar_t__) ;
 int out16rb (scalar_t__,int ) ;
 int out32rb (scalar_t__,int ) ;
 int out8rb (scalar_t__,int ) ;

__attribute__((used)) static void
grackle_write_config(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, u_int32_t val, int width)
{
 struct grackle_softc *sc;
 vm_offset_t caoff;

 sc = device_get_softc(dev);
 caoff = sc->sc_data + (reg & 0x03);

 if (grackle_enable_config(sc, bus, slot, func, reg)) {
  switch (width) {
  case 1:
   out8rb(caoff, val);
   (void)in8rb(caoff);
   break;
  case 2:
   out16rb(caoff, val);
   (void)in16rb(caoff);
   break;
  case 4:
   out32rb(caoff, val);
   (void)in32rb(caoff);
   break;
  }
 }
 grackle_disable_config(sc);
}
