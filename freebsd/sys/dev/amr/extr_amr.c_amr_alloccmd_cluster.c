
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union amr_ccb {int dummy; } amr_ccb ;
struct amr_softc {int amr_maxio; int amr_nextslot; int amr_buffer64_dmat; int amr_buffer_dmat; scalar_t__ amr_ccb_busaddr; scalar_t__ amr_ccb; scalar_t__ amr_sgtable; scalar_t__ amr_sgbusaddr; scalar_t__ amr_sg64table; int amr_list_lock; int amr_cmd_clusters; } ;
struct amr_sgentry {int dummy; } ;
struct amr_sg64entry {int dummy; } ;
struct amr_command_cluster {struct amr_command* acc_command; } ;
struct TYPE_2__ {scalar_t__ sg32; scalar_t__ sg64; } ;
struct amr_command {int ac_slot; int ac_dma64map; int ac_dmamap; scalar_t__ ac_ccb_busaddr; scalar_t__ ac_ccb; TYPE_1__ ac_sg; scalar_t__ ac_sgbusaddr; struct amr_softc* ac_sc; } ;


 int AMR_CMD_CLUSTERCOUNT ;
 int AMR_CMD_CLUSTERSIZE ;
 scalar_t__ AMR_IS_SG64 (struct amr_softc*) ;
 int AMR_NSEG ;
 int M_AMR ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct amr_command_cluster*,int ) ;
 int acc_link ;
 int amr_releasecmd (struct amr_command*) ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 struct amr_command_cluster* malloc (int ,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
amr_alloccmd_cluster(struct amr_softc *sc)
{
    struct amr_command_cluster *acc;
    struct amr_command *ac;
    int i, nextslot;





    if (sc->amr_maxio == 0)
 sc->amr_maxio = 2;

    if (sc->amr_nextslot > sc->amr_maxio)
 return;
    acc = malloc(AMR_CMD_CLUSTERSIZE, M_AMR, M_NOWAIT | M_ZERO);
    if (acc != ((void*)0)) {
 nextslot = sc->amr_nextslot;
 mtx_lock(&sc->amr_list_lock);
 TAILQ_INSERT_TAIL(&sc->amr_cmd_clusters, acc, acc_link);
 mtx_unlock(&sc->amr_list_lock);
 for (i = 0; i < AMR_CMD_CLUSTERCOUNT; i++) {
     ac = &acc->acc_command[i];
     ac->ac_sc = sc;
     ac->ac_slot = nextslot;







     if (AMR_IS_SG64(sc)) {
  ac->ac_sgbusaddr = sc->amr_sgbusaddr +
      (ac->ac_slot * AMR_NSEG * sizeof(struct amr_sg64entry));
         ac->ac_sg.sg64 = sc->amr_sg64table + (ac->ac_slot * AMR_NSEG);
     } else {
  ac->ac_sgbusaddr = sc->amr_sgbusaddr +
      (ac->ac_slot * AMR_NSEG * sizeof(struct amr_sgentry));
         ac->ac_sg.sg32 = sc->amr_sgtable + (ac->ac_slot * AMR_NSEG);
     }

     ac->ac_ccb = sc->amr_ccb + ac->ac_slot;
     ac->ac_ccb_busaddr = sc->amr_ccb_busaddr +
  (ac->ac_slot * sizeof(union amr_ccb));

     if (bus_dmamap_create(sc->amr_buffer_dmat, 0, &ac->ac_dmamap))
  break;
     if (AMR_IS_SG64(sc) &&
  (bus_dmamap_create(sc->amr_buffer64_dmat, 0,&ac->ac_dma64map)))
  break;
     amr_releasecmd(ac);
     if (++nextslot > sc->amr_maxio)
  break;
 }
 sc->amr_nextslot = nextslot;
    }
}
