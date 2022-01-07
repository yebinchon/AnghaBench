
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bxe_softc {int sp_err_timeout_task; } ;


 int BLOGE (struct bxe_softc*,char*) ;
 int BXE_ERR_STATS_TO ;
 int BXE_SET_ERROR_BIT (struct bxe_softc*,int ) ;
 scalar_t__* BXE_SP (struct bxe_softc*,int ) ;
 int DELAY (int) ;
 scalar_t__ DMAE_COMP_VAL ;
 int hz ;
 scalar_t__* stats_comp ;
 int taskqueue_enqueue_timeout (int ,int *,int) ;
 int taskqueue_thread ;

__attribute__((used)) static int
bxe_stats_comp(struct bxe_softc *sc)
{
    uint32_t *stats_comp = BXE_SP(sc, stats_comp);
    int cnt = 10;

    while (*stats_comp != DMAE_COMP_VAL) {
        if (!cnt) {
            BLOGE(sc, "Timeout waiting for stats finished\n");
     BXE_SET_ERROR_BIT(sc, BXE_ERR_STATS_TO);
            taskqueue_enqueue_timeout(taskqueue_thread,
                &sc->sp_err_timeout_task, hz/10);
            break;

        }

        cnt--;
        DELAY(1000);
    }

    return (1);
}
