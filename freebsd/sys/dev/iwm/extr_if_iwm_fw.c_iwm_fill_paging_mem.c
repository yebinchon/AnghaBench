
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct iwm_softc {int num_of_paging_blk; int num_of_pages_in_last_blk; TYPE_2__* fw_paging_db; int sc_dev; } ;
struct iwm_fw_img {TYPE_3__* sec; } ;
struct TYPE_6__ {scalar_t__ offset; char const* data; } ;
struct TYPE_4__ {int vaddr; } ;
struct TYPE_5__ {int fw_paging_size; TYPE_1__ fw_paging_block; } ;


 int EINVAL ;
 int IWM_DEBUG_FW ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,int,...) ;
 int IWM_FW_PAGING_SIZE ;
 scalar_t__ IWM_PAGING_SEPARATOR_SECTION ;
 int IWM_UCODE_SECTION_MAX ;
 int device_printf (int ,char*) ;
 int iwm_free_fw_paging (struct iwm_softc*) ;
 int memcpy (int ,char const*,int) ;
 int nitems (TYPE_3__*) ;

__attribute__((used)) static int
iwm_fill_paging_mem(struct iwm_softc *sc, const struct iwm_fw_img *image)
{
 int sec_idx, idx;
 uint32_t offset = 0;
 for (sec_idx = 0; sec_idx < IWM_UCODE_SECTION_MAX; sec_idx++) {
  if (image->sec[sec_idx].offset == IWM_PAGING_SEPARATOR_SECTION) {
   sec_idx++;
   break;
  }
 }





 if (sec_idx >= nitems(image->sec) - 1) {
  device_printf(sc->sc_dev,
      "Paging: Missing CSS and/or paging sections\n");
  iwm_free_fw_paging(sc);
  return EINVAL;
 }


 IWM_DPRINTF(sc, IWM_DEBUG_FW,
      "Paging: load paging CSS to FW, sec = %d\n",
      sec_idx);

 memcpy(sc->fw_paging_db[0].fw_paging_block.vaddr,
        image->sec[sec_idx].data,
        sc->fw_paging_db[0].fw_paging_size);

 IWM_DPRINTF(sc, IWM_DEBUG_FW,
      "Paging: copied %d CSS bytes to first block\n",
      sc->fw_paging_db[0].fw_paging_size);

 sec_idx++;







 for (idx = 1; idx < sc->num_of_paging_blk; idx++) {
  memcpy(sc->fw_paging_db[idx].fw_paging_block.vaddr,
         (const char *)image->sec[sec_idx].data + offset,
         sc->fw_paging_db[idx].fw_paging_size);

  IWM_DPRINTF(sc, IWM_DEBUG_FW,
       "Paging: copied %d paging bytes to block %d\n",
       sc->fw_paging_db[idx].fw_paging_size,
       idx);

  offset += sc->fw_paging_db[idx].fw_paging_size;
 }


 if (sc->num_of_pages_in_last_blk > 0) {
  memcpy(sc->fw_paging_db[idx].fw_paging_block.vaddr,
         (const char *)image->sec[sec_idx].data + offset,
         IWM_FW_PAGING_SIZE * sc->num_of_pages_in_last_blk);

  IWM_DPRINTF(sc, IWM_DEBUG_FW,
       "Paging: copied %d pages in the last block %d\n",
       sc->num_of_pages_in_last_blk, idx);
 }

 return 0;
}
