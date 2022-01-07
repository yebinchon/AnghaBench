
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memwin {int mw_curpos; int mw_lock; } ;
struct adapter {int pf; struct memwin* memwin; } ;


 int A_PCIE_MEM_ACCESS_OFFSET ;
 int MPASS (int) ;
 int NUM_MEMWIN ;
 int PCIE_MEM_ACCESS_REG (int ,int) ;
 int RA_WLOCKED ;
 int V_PFNUM (int ) ;
 scalar_t__ is_t4 (struct adapter*) ;
 int rw_assert (int *,int ) ;
 int t4_read_reg (struct adapter*,int) ;
 int t4_write_reg (struct adapter*,int,int) ;

__attribute__((used)) static void
position_memwin(struct adapter *sc, int idx, uint32_t addr)
{
 struct memwin *mw;
 uint32_t pf;
 uint32_t reg;

 MPASS(idx >= 0 && idx < NUM_MEMWIN);
 mw = &sc->memwin[idx];
 rw_assert(&mw->mw_lock, RA_WLOCKED);

 if (is_t4(sc)) {
  pf = 0;
  mw->mw_curpos = addr & ~0xf;
 } else {
  pf = V_PFNUM(sc->pf);
  mw->mw_curpos = addr & ~0x7f;
 }
 reg = PCIE_MEM_ACCESS_REG(A_PCIE_MEM_ACCESS_OFFSET, idx);
 t4_write_reg(sc, reg, mw->mw_curpos | pf);
 t4_read_reg(sc, reg);
}
