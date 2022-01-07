
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amr_softc {int amr_buffer64_dmat; int amr_buffer_dmat; } ;
struct amr_command_cluster {TYPE_1__* acc_command; } ;
struct TYPE_2__ {int ac_dma64map; int ac_dmamap; struct amr_softc* ac_sc; } ;


 int AMR_CMD_CLUSTERCOUNT ;
 scalar_t__ AMR_IS_SG64 (struct amr_softc*) ;
 int M_AMR ;
 int bus_dmamap_destroy (int ,int ) ;
 int free (struct amr_command_cluster*,int ) ;

__attribute__((used)) static void
amr_freecmd_cluster(struct amr_command_cluster *acc)
{
    struct amr_softc *sc = acc->acc_command[0].ac_sc;
    int i;

    for (i = 0; i < AMR_CMD_CLUSTERCOUNT; i++) {
 if (acc->acc_command[i].ac_sc == ((void*)0))
     break;
 bus_dmamap_destroy(sc->amr_buffer_dmat, acc->acc_command[i].ac_dmamap);
 if (AMR_IS_SG64(sc))
  bus_dmamap_destroy(sc->amr_buffer64_dmat, acc->acc_command[i].ac_dma64map);
    }
    free(acc, M_AMR);
}
