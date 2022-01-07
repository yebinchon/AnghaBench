
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memwin {int mw_curpos; int mw_aperture; int mw_base; int mw_lock; } ;
struct adapter {struct memwin* memwin; } ;


 int EINVAL ;
 int MPASS (int) ;
 int NUM_MEMWIN ;
 int RA_RLOCKED ;
 int RA_WLOCKED ;
 int htole32 (int) ;
 int le32toh (int) ;
 int position_memwin (struct adapter*,int,int) ;
 int rw_assert (int *,int ) ;
 int rw_downgrade (int *) ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;
 int rw_try_upgrade (int *) ;
 int rw_wlock (int *) ;
 int t4_read_reg (struct adapter*,int) ;
 int t4_write_reg (struct adapter*,int,int ) ;

int
rw_via_memwin(struct adapter *sc, int idx, uint32_t addr, uint32_t *val,
    int len, int rw)
{
 struct memwin *mw;
 uint32_t mw_end, v;

 MPASS(idx >= 0 && idx < NUM_MEMWIN);


 if (addr & 3 || len & 3 || len <= 0)
  return (EINVAL);

 mw = &sc->memwin[idx];
 while (len > 0) {
  rw_rlock(&mw->mw_lock);
  mw_end = mw->mw_curpos + mw->mw_aperture;
  if (addr >= mw_end || addr < mw->mw_curpos) {

   if (!rw_try_upgrade(&mw->mw_lock)) {
    rw_runlock(&mw->mw_lock);
    rw_wlock(&mw->mw_lock);
   }
   rw_assert(&mw->mw_lock, RA_WLOCKED);
   position_memwin(sc, idx, addr);
   rw_downgrade(&mw->mw_lock);
   mw_end = mw->mw_curpos + mw->mw_aperture;
  }
  rw_assert(&mw->mw_lock, RA_RLOCKED);
  while (addr < mw_end && len > 0) {
   if (rw == 0) {
    v = t4_read_reg(sc, mw->mw_base + addr -
        mw->mw_curpos);
    *val++ = le32toh(v);
   } else {
    v = *val++;
    t4_write_reg(sc, mw->mw_base + addr -
        mw->mw_curpos, htole32(v));
   }
   addr += 4;
   len -= 4;
  }
  rw_runlock(&mw->mw_lock);
 }

 return (0);
}
