
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct cpcht_softc {int sc_populated_slots; scalar_t__ sc_data; } ;
typedef int device_t ;


 struct cpcht_softc* device_get_softc (int ) ;
 int out16rb (scalar_t__,int ) ;
 int out32rb (scalar_t__,int ) ;
 int out8rb (scalar_t__,int ) ;

__attribute__((used)) static void
cpcht_write_config(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, u_int32_t val, int width)
{
 struct cpcht_softc *sc;
 vm_offset_t caoff;

 sc = device_get_softc(dev);
 caoff = sc->sc_data +
  (((((slot & 0x1f) << 3) | (func & 0x07)) << 8) | reg);

 if (bus == 0 && (!(sc->sc_populated_slots & (1 << slot)) || func > 0))
  return;

 if (bus > 0)
  caoff += 0x01000000UL + (bus << 16);

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
