
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mcp_slot {int dummy; } ;
struct TYPE_8__ {int num_slices; char* fw_name; int dev; } ;
typedef TYPE_1__ mxge_softc_t ;
struct TYPE_9__ {int data0; } ;
typedef TYPE_2__ mxge_cmd_t ;
typedef int mcp_dma_addr_t ;
typedef int cmd ;


 int MXGEFW_CMD_GET_MAX_RSS_QUEUES ;
 int MXGEFW_CMD_GET_RX_RING_SIZE ;
 int MXGEFW_CMD_RESET ;
 int MXGEFW_CMD_SET_INTRQ_SIZE ;
 int device_printf (int ,char*,...) ;
 int memset (TYPE_2__*,int ,int) ;
 int mp_ncpus ;
 char* mxge_fw_aligned ;
 char* mxge_fw_rss_aligned ;
 char* mxge_fw_rss_unaligned ;
 int mxge_load_firmware (TYPE_1__*,int ) ;
 int mxge_max_slices ;
 int mxge_send_cmd (TYPE_1__*,int ,TYPE_2__*) ;
 scalar_t__ mxge_verbose ;
 int pci_msix_count (int ) ;

__attribute__((used)) static void
mxge_slice_probe(mxge_softc_t *sc)
{
 mxge_cmd_t cmd;
 char *old_fw;
 int msix_cnt, status, max_intr_slots;

 sc->num_slices = 1;





 if (mxge_max_slices == 0 || mxge_max_slices == 1 || mp_ncpus < 2)
  return;


 msix_cnt = pci_msix_count(sc->dev);
 if (msix_cnt < 2)
  return;


 old_fw = sc->fw_name;
 if (old_fw == mxge_fw_aligned)
  sc->fw_name = mxge_fw_rss_aligned;
 else
  sc->fw_name = mxge_fw_rss_unaligned;
 status = mxge_load_firmware(sc, 0);
 if (status != 0) {
  device_printf(sc->dev, "Falling back to a single slice\n");
  return;
 }



 memset(&cmd, 0, sizeof (cmd));
 status = mxge_send_cmd(sc, MXGEFW_CMD_RESET, &cmd);
 if (status != 0) {
  device_printf(sc->dev, "failed reset\n");
  goto abort_with_fw;
 }


 status = mxge_send_cmd(sc, MXGEFW_CMD_GET_RX_RING_SIZE, &cmd);
 if (status != 0) {
  device_printf(sc->dev, "Cannot determine rx ring size\n");
  goto abort_with_fw;
 }
 max_intr_slots = 2 * (cmd.data0 / sizeof (mcp_dma_addr_t));


 cmd.data0 = max_intr_slots * sizeof (struct mcp_slot);
 status = mxge_send_cmd(sc, MXGEFW_CMD_SET_INTRQ_SIZE, &cmd);
 if (status != 0) {
  device_printf(sc->dev, "failed MXGEFW_CMD_SET_INTRQ_SIZE\n");
  goto abort_with_fw;
 }


 status = mxge_send_cmd(sc, MXGEFW_CMD_GET_MAX_RSS_QUEUES, &cmd);
 if (status != 0) {
  device_printf(sc->dev,
         "failed MXGEFW_CMD_GET_MAX_RSS_QUEUES\n");
  goto abort_with_fw;
 }
 sc->num_slices = cmd.data0;
 if (sc->num_slices > msix_cnt)
  sc->num_slices = msix_cnt;

 if (mxge_max_slices == -1) {

  if (sc->num_slices > mp_ncpus)
   sc->num_slices = mp_ncpus;
 } else {
  if (sc->num_slices > mxge_max_slices)
   sc->num_slices = mxge_max_slices;
 }

 while (sc->num_slices & (sc->num_slices - 1))
  sc->num_slices--;

 if (mxge_verbose)
  device_printf(sc->dev, "using %d slices\n",
         sc->num_slices);

 return;

abort_with_fw:
 sc->fw_name = old_fw;
 (void) mxge_load_firmware(sc, 0);
}
