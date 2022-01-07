
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct ntb_plx_softc {unsigned int spad_count1; unsigned int spad_count2; int conf_res; scalar_t__ spad_off2; scalar_t__ spad_off1; } ;
typedef int device_t ;


 int EINVAL ;
 int bus_write_4 (int ,scalar_t__,int ) ;
 struct ntb_plx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ntb_plx_spad_write(device_t dev, unsigned int idx, uint32_t val)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);
 u_int off;

 if (idx >= sc->spad_count1 + sc->spad_count2)
  return (EINVAL);

 if (idx < sc->spad_count1)
  off = sc->spad_off1 + idx * 4;
 else
  off = sc->spad_off2 + (idx - sc->spad_count1) * 4;
 bus_write_4(sc->conf_res, off, val);
 return (0);
}
