
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int BLOGE (struct bxe_softc*,char*,int,int) ;
 int DBG_LOAD ;
 int HW_LOCK_RESOURCE_SPIO ;
 int MISC_REG_SPIO ;
 int MISC_SPIO_CLR_POS ;
 int MISC_SPIO_FLOAT ;
 int MISC_SPIO_FLOAT_POS ;



 int MISC_SPIO_SET_POS ;
 int MISC_SPIO_SPIO4 ;
 int MISC_SPIO_SPIO5 ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int bxe_acquire_hw_lock (struct bxe_softc*,int ) ;
 int bxe_release_hw_lock (struct bxe_softc*,int ) ;

__attribute__((used)) static int
bxe_set_spio(struct bxe_softc *sc,
             int spio,
             uint32_t mode)
{
    uint32_t spio_reg;


    if ((spio != MISC_SPIO_SPIO4) && (spio != MISC_SPIO_SPIO5)) {
        BLOGE(sc, "Invalid SPIO 0x%x mode 0x%x\n", spio, mode);
        return (-1);
    }

    bxe_acquire_hw_lock(sc, HW_LOCK_RESOURCE_SPIO);


    spio_reg = (REG_RD(sc, MISC_REG_SPIO) & MISC_SPIO_FLOAT);

    switch (mode) {
    case 128:
        BLOGD(sc, DBG_LOAD, "Set SPIO 0x%x -> output low\n", spio);

        spio_reg &= ~(spio << MISC_SPIO_FLOAT_POS);
        spio_reg |= (spio << MISC_SPIO_CLR_POS);
        break;

    case 129:
        BLOGD(sc, DBG_LOAD, "Set SPIO 0x%x -> output high\n", spio);

        spio_reg &= ~(spio << MISC_SPIO_FLOAT_POS);
        spio_reg |= (spio << MISC_SPIO_SET_POS);
        break;

    case 130:
        BLOGD(sc, DBG_LOAD, "Set SPIO 0x%x -> input\n", spio);

        spio_reg |= (spio << MISC_SPIO_FLOAT_POS);
        break;

    default:
        break;
    }

    REG_WR(sc, MISC_REG_SPIO, spio_reg);
    bxe_release_hw_lock(sc, HW_LOCK_RESOURCE_SPIO);

    return (0);
}
