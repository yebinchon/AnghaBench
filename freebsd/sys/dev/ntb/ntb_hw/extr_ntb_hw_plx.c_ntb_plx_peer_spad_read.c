
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct ntb_plx_softc {unsigned int spad_count1; unsigned int spad_count2; size_t b2b_mw; int conf_res; TYPE_1__* mw_info; scalar_t__ spad_offp2; scalar_t__ spad_offp1; } ;
typedef int device_t ;
struct TYPE_2__ {int mw_res; } ;


 int EINVAL ;
 int bus_read_4 (int ,scalar_t__) ;
 struct ntb_plx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ntb_plx_peer_spad_read(device_t dev, unsigned int idx, uint32_t *val)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);
 u_int off;

 if (idx >= sc->spad_count1 + sc->spad_count2)
  return (EINVAL);

 if (idx < sc->spad_count1)
  off = sc->spad_offp1 + idx * 4;
 else
  off = sc->spad_offp2 + (idx - sc->spad_count1) * 4;
 if (sc->b2b_mw >= 0)
  *val = bus_read_4(sc->mw_info[sc->b2b_mw].mw_res, off);
 else
  *val = bus_read_4(sc->conf_res, off);
 return (0);
}
