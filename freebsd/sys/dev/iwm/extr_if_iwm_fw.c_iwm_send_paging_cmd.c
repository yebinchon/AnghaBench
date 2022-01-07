
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct iwm_softc {int num_of_pages_in_last_blk; int num_of_paging_blk; TYPE_2__* fw_paging_db; int sc_dmat; } ;
struct iwm_fw_paging_cmd {int * device_phy_addr; int block_num; int block_size; int flags; } ;
struct iwm_fw_img {int dummy; } ;
typedef int fw_paging_cmd ;
struct TYPE_3__ {int paddr; int map; } ;
struct TYPE_4__ {TYPE_1__ fw_paging_block; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int IWM_ALWAYS_LONG_GROUP ;
 int IWM_BLOCK_2_EXP_SIZE ;
 int IWM_FW_PAGING_BLOCK_CMD ;
 int IWM_PAGE_2_EXP_SIZE ;
 int IWM_PAGING_CMD_IS_ENABLED ;
 int IWM_PAGING_CMD_IS_SECURED ;
 int IWM_PAGING_CMD_NUM_OF_PAGES_IN_LAST_GRP_POS ;
 int bus_dmamap_sync (int ,int ,int) ;
 int htole32 (int) ;
 int iwm_cmd_id (int ,int ,int ) ;
 int iwm_mvm_send_cmd_pdu (struct iwm_softc*,int ,int ,int,struct iwm_fw_paging_cmd*) ;

int
iwm_send_paging_cmd(struct iwm_softc *sc, const struct iwm_fw_img *fw)
{
 int blk_idx;
 uint32_t dev_phy_addr;
 struct iwm_fw_paging_cmd fw_paging_cmd = {
  .flags =
   htole32(IWM_PAGING_CMD_IS_SECURED |
    IWM_PAGING_CMD_IS_ENABLED |
    (sc->num_of_pages_in_last_blk <<
    IWM_PAGING_CMD_NUM_OF_PAGES_IN_LAST_GRP_POS)),
  .block_size = htole32(IWM_BLOCK_2_EXP_SIZE),
  .block_num = htole32(sc->num_of_paging_blk),
 };


 for (blk_idx = 0; blk_idx < sc->num_of_paging_blk + 1; blk_idx++) {
  dev_phy_addr = htole32(
      sc->fw_paging_db[blk_idx].fw_paging_block.paddr >>
      IWM_PAGE_2_EXP_SIZE);
  fw_paging_cmd.device_phy_addr[blk_idx] = dev_phy_addr;
  bus_dmamap_sync(sc->sc_dmat,
      sc->fw_paging_db[blk_idx].fw_paging_block.map,
      BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);
 }

 return iwm_mvm_send_cmd_pdu(sc, iwm_cmd_id(IWM_FW_PAGING_BLOCK_CMD,
         IWM_ALWAYS_LONG_GROUP, 0),
        0, sizeof(fw_paging_cmd), &fw_paging_cmd);
}
