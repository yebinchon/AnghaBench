
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct vmd_softc {int vmd_bhandle; int vmd_btag; } ;
typedef int device_t ;
typedef int bus_addr_t ;


 int KASSERT (int,char*) ;
 int bus_space_read_1 (int ,int ,int) ;
 int bus_space_read_2 (int ,int ,int) ;
 int bus_space_read_4 (int ,int ,int) ;
 struct vmd_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
vmd_read_config(device_t dev, u_int b, u_int s, u_int f, u_int reg, int width)
{

 struct vmd_softc *sc;
 bus_addr_t offset;

 offset = (b << 20) + (s << 15) + (f << 12) + reg;
 sc = device_get_softc(dev);
 switch(width) {
 case 4:
  return (bus_space_read_4(sc->vmd_btag, sc->vmd_bhandle,
      offset));
 case 2:
  return (bus_space_read_2(sc->vmd_btag, sc->vmd_bhandle,
      offset));
 case 1:
  return (bus_space_read_1(sc->vmd_btag, sc->vmd_bhandle,
      offset));
 default:
  KASSERT(1, ("Invalid width requested"));
  return (0xffffffff);
 }
}
