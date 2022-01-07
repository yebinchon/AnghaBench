
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct mrsas_softc {int sge_holes; int nvme_page_size; } ;
struct mrsas_mpt_cmd {int length; struct mrsas_softc* sc; } ;
struct TYPE_3__ {int ds_len; int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int boolean_t ;


 int MR_DEFAULT_NVME_PAGE_SIZE ;
 int max (int ,int ) ;
 int mrsas_atomic_inc (int *) ;

__attribute__((used)) static boolean_t mrsas_is_prp_possible(struct mrsas_mpt_cmd *cmd,
 bus_dma_segment_t *segs, int nsegs)
{
 struct mrsas_softc *sc = cmd->sc;
 int i;
 u_int32_t data_length = 0;
 bool build_prp = 0;
 u_int32_t mr_nvme_pg_size;

 mr_nvme_pg_size = max(sc->nvme_page_size, MR_DEFAULT_NVME_PAGE_SIZE);
 data_length = cmd->length;

 if (data_length > (mr_nvme_pg_size * 5))
  build_prp = 1;
 else if ((data_length > (mr_nvme_pg_size * 4)) &&
  (data_length <= (mr_nvme_pg_size * 5))) {

  if ((segs[0].ds_len) < (data_length - (mr_nvme_pg_size * 4)))
   build_prp = 1;
 }


 for (i = 0; i < nsegs; i++) {

  if ((i != 0) && (i != (nsegs - 1))) {
    if ((segs[i].ds_addr % mr_nvme_pg_size) ||
     (segs[i].ds_len % mr_nvme_pg_size)) {
     build_prp = 0;
     mrsas_atomic_inc(&sc->sge_holes);
     break;
    }
  }


  if ((nsegs > 1) && (i == 0)) {
    if ((segs[i].ds_addr + segs[i].ds_len) % mr_nvme_pg_size) {
     build_prp = 0;
     mrsas_atomic_inc(&sc->sge_holes);
     break;
    }
  }


  if ((nsegs > 1) && (i == (nsegs - 1))) {
    if (segs[i].ds_addr % mr_nvme_pg_size) {
     build_prp = 0;
     mrsas_atomic_inc(&sc->sge_holes);
     break;
    }
  }

 }

 return build_prp;
}
