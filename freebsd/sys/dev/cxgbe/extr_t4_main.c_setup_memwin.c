
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memwin_init {int base; int aperture; } ;
struct memwin {int mw_base; int mw_lock; int mw_aperture; scalar_t__ mw_curpos; } ;
struct adapter {struct memwin* memwin; } ;


 int A_PCIE_MEM_ACCESS_BASE_WIN ;
 int NUM_MEMWIN ;
 int PCIE_MEM_ACCESS_REG (int ,int) ;
 scalar_t__ PCIM_BAR_MEM_BASE ;
 int PCIR_BAR (int ) ;
 int V_BIR (int ) ;
 int V_WINDOW (scalar_t__) ;
 scalar_t__ ilog2 (int ) ;
 scalar_t__ is_t4 (struct adapter*) ;
 int position_memwin (struct adapter*,int,int ) ;
 int rw_init (int *,char*) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int t4_hw_pci_read_cfg4 (struct adapter*,int ) ;
 struct memwin_init* t4_memwin ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;
 struct memwin_init* t5_memwin ;

__attribute__((used)) static void
setup_memwin(struct adapter *sc)
{
 const struct memwin_init *mw_init;
 struct memwin *mw;
 int i;
 uint32_t bar0;

 if (is_t4(sc)) {







  bar0 = t4_hw_pci_read_cfg4(sc, PCIR_BAR(0));
  bar0 &= (uint32_t) PCIM_BAR_MEM_BASE;

  mw_init = &t4_memwin[0];
 } else {

  bar0 = 0;

  mw_init = &t5_memwin[0];
 }

 for (i = 0, mw = &sc->memwin[0]; i < NUM_MEMWIN; i++, mw_init++, mw++) {
  rw_init(&mw->mw_lock, "memory window access");
  mw->mw_base = mw_init->base;
  mw->mw_aperture = mw_init->aperture;
  mw->mw_curpos = 0;
  t4_write_reg(sc,
      PCIE_MEM_ACCESS_REG(A_PCIE_MEM_ACCESS_BASE_WIN, i),
      (mw->mw_base + bar0) | V_BIR(0) |
      V_WINDOW(ilog2(mw->mw_aperture) - 10));
  rw_wlock(&mw->mw_lock);
  position_memwin(sc, i, 0);
  rw_wunlock(&mw->mw_lock);
 }


 t4_read_reg(sc, PCIE_MEM_ACCESS_REG(A_PCIE_MEM_ACCESS_BASE_WIN, 2));
}
