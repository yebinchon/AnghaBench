
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_plx_softc {unsigned int mw_count; struct ntb_plx_mw_info* mw_info; } ;
struct ntb_plx_mw_info {TYPE_1__* splits; int mw_64bit; } ;
typedef int device_t ;
typedef size_t bus_addr_t ;
struct TYPE_2__ {size_t mw_xlat_addr; size_t mw_xlat_size; } ;


 int EINVAL ;
 int ERANGE ;
 size_t UINT32_MAX ;
 struct ntb_plx_softc* device_get_softc (int ) ;
 int ntb_plx_mw_set_trans_internal (int ,unsigned int) ;
 unsigned int ntb_plx_user_mw_to_idx (struct ntb_plx_softc*,unsigned int,unsigned int*) ;

__attribute__((used)) static int
ntb_plx_mw_set_trans(device_t dev, unsigned mw_idx, bus_addr_t addr, size_t size)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);
 struct ntb_plx_mw_info *mw;
 unsigned sp;

 mw_idx = ntb_plx_user_mw_to_idx(sc, mw_idx, &sp);
 if (mw_idx >= sc->mw_count)
  return (EINVAL);
 mw = &sc->mw_info[mw_idx];
 if (!mw->mw_64bit &&
     ((addr & UINT32_MAX) != addr ||
      ((addr + size) & UINT32_MAX) != (addr + size)))
  return (ERANGE);
 mw->splits[sp].mw_xlat_addr = addr;
 mw->splits[sp].mw_xlat_size = size;
 return (ntb_plx_mw_set_trans_internal(dev, mw_idx));
}
