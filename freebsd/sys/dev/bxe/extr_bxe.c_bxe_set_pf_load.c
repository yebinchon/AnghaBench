
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int BXE_PATH0_LOAD_CNT_MASK ;
 int BXE_PATH0_LOAD_CNT_SHIFT ;
 int BXE_PATH1_LOAD_CNT_MASK ;
 int BXE_PATH1_LOAD_CNT_SHIFT ;
 int BXE_RECOVERY_GLOB_REG ;
 int DBG_LOAD ;
 int HW_LOCK_RESOURCE_RECOVERY_REG ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int SC_ABS_FUNC (struct bxe_softc*) ;
 scalar_t__ SC_PATH (struct bxe_softc*) ;
 int bxe_acquire_hw_lock (struct bxe_softc*,int ) ;
 int bxe_release_hw_lock (struct bxe_softc*,int ) ;

__attribute__((used)) static void
bxe_set_pf_load(struct bxe_softc *sc)
{
    uint32_t val;
    uint32_t val1;
    uint32_t mask = SC_PATH(sc) ? BXE_PATH1_LOAD_CNT_MASK :
                                  BXE_PATH0_LOAD_CNT_MASK;
    uint32_t shift = SC_PATH(sc) ? BXE_PATH1_LOAD_CNT_SHIFT :
                                   BXE_PATH0_LOAD_CNT_SHIFT;

    bxe_acquire_hw_lock(sc, HW_LOCK_RESOURCE_RECOVERY_REG);

    val = REG_RD(sc, BXE_RECOVERY_GLOB_REG);
    BLOGD(sc, DBG_LOAD, "Old value for GLOB_REG=0x%08x\n", val);


    val1 = ((val & mask) >> shift);


    val1 |= (1 << SC_ABS_FUNC(sc));


    val &= ~mask;


    val |= ((val1 << shift) & mask);

    REG_WR(sc, BXE_RECOVERY_GLOB_REG, val);

    bxe_release_hw_lock(sc, HW_LOCK_RESOURCE_RECOVERY_REG);
}
