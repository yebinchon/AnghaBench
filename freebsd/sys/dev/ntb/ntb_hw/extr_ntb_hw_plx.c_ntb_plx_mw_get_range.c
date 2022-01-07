
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
struct ntb_plx_softc {unsigned int mw_count; unsigned int b2b_mw; size_t b2b_off; unsigned int split; size_t alut; struct ntb_plx_mw_info* mw_info; } ;
struct ntb_plx_mw_info {int mw_bar; size_t mw_size; scalar_t__ mw_64bit; scalar_t__ mw_vbase; scalar_t__ mw_pbase; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;
typedef int bus_addr_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int EINVAL ;
 int KASSERT (int,char*) ;
 struct ntb_plx_softc* device_get_softc (int ) ;
 unsigned int ntb_plx_user_mw_to_idx (struct ntb_plx_softc*,unsigned int,unsigned int*) ;

__attribute__((used)) static int
ntb_plx_mw_get_range(device_t dev, unsigned mw_idx, vm_paddr_t *base,
    caddr_t *vbase, size_t *size, size_t *align, size_t *align_size,
    bus_addr_t *plimit)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);
 struct ntb_plx_mw_info *mw;
 size_t off, ss;
 unsigned sp, split;

 mw_idx = ntb_plx_user_mw_to_idx(sc, mw_idx, &sp);
 if (mw_idx >= sc->mw_count)
  return (EINVAL);
 off = 0;
 if (mw_idx == sc->b2b_mw) {
  KASSERT(sc->b2b_off != 0,
      ("user shouldn't get non-shared b2b mw"));
  off = sc->b2b_off;
 }
 mw = &sc->mw_info[mw_idx];
 split = (mw->mw_bar == 2) ? sc->split : 0;
 ss = (mw->mw_size - off) >> split;


 if (base != ((void*)0))
  *base = mw->mw_pbase + off + ss * sp;
 if (vbase != ((void*)0))
  *vbase = mw->mw_vbase + off + ss * sp;
 if (size != ((void*)0))
  *size = ss;
 if (align != ((void*)0)) {
  if (sc->alut && mw->mw_bar == 2)
   *align = (mw->mw_size - off) / 128 / sc->alut;
  else
   *align = mw->mw_size - off;
 }
 if (align_size != ((void*)0)) {
  if (sc->alut && mw->mw_bar == 2)
   *align_size = (mw->mw_size - off) / 128 / sc->alut;
  else if (sc->b2b_mw >= 0)
   *align_size = (mw->mw_size - off) / 2;
  else
   *align_size = mw->mw_size - off;
 }


 if (plimit != ((void*)0))
  *plimit = mw->mw_64bit ? BUS_SPACE_MAXADDR :
      BUS_SPACE_MAXADDR_32BIT;
 return (0);
}
