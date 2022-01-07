
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmae_cmd {int dummy; } ;
struct bxe_softc {scalar_t__ recovery_state; } ;


 int BLOGE (struct bxe_softc*,char*,int,scalar_t__) ;
 int BXE_DMAE_LOCK (struct bxe_softc*) ;
 int BXE_DMAE_UNLOCK (struct bxe_softc*) ;
 scalar_t__ BXE_RECOVERY_DONE ;
 scalar_t__ BXE_RECOVERY_NIC_LOADING ;
 int* BXE_SP (struct bxe_softc*,int ) ;
 scalar_t__ CHIP_REV_IS_SLOW (struct bxe_softc*) ;
 int DELAY (int) ;
 int DMAE_COMP_VAL ;
 int DMAE_PCI_ERROR ;
 int DMAE_PCI_ERR_FLAG ;
 int DMAE_TIMEOUT ;
 int INIT_DMAE_C (struct bxe_softc*) ;
 int bxe_post_dmae (struct bxe_softc*,struct dmae_cmd*,int ) ;
 int* wb_comp ;

__attribute__((used)) static int
bxe_issue_dmae_with_comp(struct bxe_softc *sc,
                         struct dmae_cmd *dmae)
{
    uint32_t *wb_comp = BXE_SP(sc, wb_comp);
    int timeout = CHIP_REV_IS_SLOW(sc) ? 400000 : 4000;

    BXE_DMAE_LOCK(sc);


    *wb_comp = 0;


    bxe_post_dmae(sc, dmae, INIT_DMAE_C(sc));


    DELAY(5);

    while ((*wb_comp & ~DMAE_PCI_ERR_FLAG) != DMAE_COMP_VAL) {
        if (!timeout ||
            (sc->recovery_state != BXE_RECOVERY_DONE &&
             sc->recovery_state != BXE_RECOVERY_NIC_LOADING)) {
            BLOGE(sc, "DMAE timeout! *wb_comp 0x%x recovery_state 0x%x\n",
                *wb_comp, sc->recovery_state);
            BXE_DMAE_UNLOCK(sc);
            return (DMAE_TIMEOUT);
        }

        timeout--;
        DELAY(50);
    }

    if (*wb_comp & DMAE_PCI_ERR_FLAG) {
        BLOGE(sc, "DMAE PCI error! *wb_comp 0x%x recovery_state 0x%x\n",
                *wb_comp, sc->recovery_state);
        BXE_DMAE_UNLOCK(sc);
        return (DMAE_PCI_ERROR);
    }

    BXE_DMAE_UNLOCK(sc);
    return (0);
}
