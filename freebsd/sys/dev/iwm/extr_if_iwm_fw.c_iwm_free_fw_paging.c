
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwm_softc {TYPE_1__* fw_paging_db; } ;
struct TYPE_4__ {int * vaddr; } ;
struct TYPE_3__ {TYPE_2__ fw_paging_block; } ;


 int IWM_NUM_OF_FW_PAGING_BLOCKS ;
 int iwm_dma_contig_free (TYPE_2__*) ;
 int memset (TYPE_1__*,int ,int) ;

void
iwm_free_fw_paging(struct iwm_softc *sc)
{
 int i;

 if (sc->fw_paging_db[0].fw_paging_block.vaddr == ((void*)0))
  return;

 for (i = 0; i < IWM_NUM_OF_FW_PAGING_BLOCKS; i++) {
  iwm_dma_contig_free(&sc->fw_paging_db[i].fw_paging_block);
 }

 memset(sc->fw_paging_db, 0, sizeof(sc->fw_paging_db));
}
