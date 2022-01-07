
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int (* setup_device_regs ) (struct octeon_device*) ;int (* enable_io_queues ) (struct octeon_device*) ;int (* enable_interrupt ) (struct octeon_device*,int ) ;scalar_t__ (* soft_reset ) (struct octeon_device*) ;} ;
struct TYPE_5__ {int num_pf_rings; } ;
struct octeon_device {int num_oqs; int status; TYPE_4__* console; TYPE_3__ fn_list; TYPE_2__** droq; TYPE_1__ sriov_info; int ** instr_queue; int app_mode; int device; } ;
struct lio_instr_queue {int dummy; } ;
struct TYPE_8__ {int print; } ;
struct TYPE_6__ {int max_count; int pkts_credit_reg; } ;


 unsigned long LIO_DDR_TIMEOUT ;
 int LIO_DEV_BEGIN_STATE ;
 int LIO_DEV_CONSOLE_INIT_DONE ;
 int LIO_DEV_DISPATCH_INIT_DONE ;
 int LIO_DEV_DROQ_INIT_DONE ;
 int LIO_DEV_HOST_OK ;
 int LIO_DEV_INSTR_QUEUE_INIT_DONE ;
 int LIO_DEV_INTR_SET_DONE ;
 int LIO_DEV_IO_QUEUES_DONE ;
 int LIO_DEV_MSIX_ALLOC_VECTOR_DONE ;
 int LIO_DEV_PCI_ENABLE_DONE ;
 int LIO_DEV_PCI_MAP_DONE ;
 int LIO_DEV_RESP_LIST_INIT_DONE ;
 int LIO_DEV_SC_BUFF_POOL_INIT_DONE ;
 int LIO_DRV_INVALID_APP ;
 int LIO_MAX_POSSIBLE_INSTR_QUEUES ;
 int LIO_MAX_POSSIBLE_OUTPUT_QUEUES ;
 int LIO_OPCODE_NIC ;
 int LIO_OPCODE_NIC_CORE_DRV_ACTIVE ;
 int LIO_RESET_MSECS ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int OCTEON_ALL_INTR ;
 int atomic_store_rel_int (int *,int ) ;
 int fw_type_is_none () ;
 int lio_add_console (struct octeon_device*,int ,char*) ;
 scalar_t__ lio_allocate_ioq_vector (struct octeon_device*) ;
 scalar_t__ lio_chip_specific_setup (struct octeon_device*) ;
 int lio_cn23xx_pf_fw_loaded (struct octeon_device*) ;
 scalar_t__ lio_console_debug_enabled (int ) ;
 int lio_console_send_cmd (struct octeon_device*,char*,int) ;
 int lio_core_drv_init ;
 int lio_dbg_console_print ;
 int lio_dev_dbg (struct octeon_device*,char*) ;
 int lio_dev_err (struct octeon_device*,char*,...) ;
 int lio_dev_info (struct octeon_device*,char*) ;
 int lio_init_consoles (struct octeon_device*) ;
 scalar_t__ lio_init_dispatch_list (struct octeon_device*) ;
 int lio_load_firmware (struct octeon_device*) ;
 int lio_ms_to_ticks (int) ;
 int lio_register_device (struct octeon_device*,int ,int ,int ,int) ;
 int lio_register_dispatch_fn (struct octeon_device*,int ,int ,int ,struct octeon_device*) ;
 scalar_t__ lio_setup_instr_queue0 (struct octeon_device*) ;
 scalar_t__ lio_setup_interrupt (struct octeon_device*,int ) ;
 scalar_t__ lio_setup_output_queue0 (struct octeon_device*) ;
 scalar_t__ lio_setup_response_list (struct octeon_device*) ;
 scalar_t__ lio_setup_sc_buffer_pool (struct octeon_device*) ;
 int lio_sleep_timeout (int ) ;
 scalar_t__ lio_wait_for_bootloader (struct octeon_device*,int) ;
 int lio_wait_for_ddr_init (struct octeon_device*,unsigned long*) ;
 int lio_write_csr32 (struct octeon_device*,int ,int ) ;
 void* malloc (int,int ,int) ;
 scalar_t__ pause (char*,int ) ;
 scalar_t__ pci_enable_busmaster (int ) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 scalar_t__ stub1 (struct octeon_device*) ;
 int stub2 (struct octeon_device*) ;
 int stub3 (struct octeon_device*,int ) ;
 int stub4 (struct octeon_device*) ;

__attribute__((used)) static int
lio_device_init(struct octeon_device *octeon_dev)
{
 unsigned long ddr_timeout = LIO_DDR_TIMEOUT;
 char *dbg_enb = ((void*)0);
 int fw_loaded = 0;
 int i, j, ret;
 uint8_t bus, dev, function;
 char bootcmd[] = "\n";

 bus = pci_get_bus(octeon_dev->device);
 dev = pci_get_slot(octeon_dev->device);
 function = pci_get_function(octeon_dev->device);

 atomic_store_rel_int(&octeon_dev->status, LIO_DEV_BEGIN_STATE);


 if (pci_enable_busmaster(octeon_dev->device)) {
  lio_dev_err(octeon_dev, "pci_enable_device failed\n");
  return (1);
 }

 atomic_store_rel_int(&octeon_dev->status, LIO_DEV_PCI_ENABLE_DONE);


 if (lio_chip_specific_setup(octeon_dev)) {
  lio_dev_err(octeon_dev, "Chip specific setup failed\n");
  return (1);
 }

 atomic_store_rel_int(&octeon_dev->status, LIO_DEV_PCI_MAP_DONE);






 lio_register_device(octeon_dev, bus, dev, function, 1);


 octeon_dev->app_mode = LIO_DRV_INVALID_APP;

 if (!lio_cn23xx_pf_fw_loaded(octeon_dev) && !fw_type_is_none()) {
  fw_loaded = 0;

  if (octeon_dev->fn_list.soft_reset(octeon_dev))
   return (1);


  if (!lio_cn23xx_pf_fw_loaded(octeon_dev))
   fw_loaded = 0;
  else
   fw_loaded = 1;
 } else {
  fw_loaded = 1;
 }





 if (lio_init_dispatch_list(octeon_dev))
  return (1);

 lio_register_dispatch_fn(octeon_dev, LIO_OPCODE_NIC,
     LIO_OPCODE_NIC_CORE_DRV_ACTIVE,
     lio_core_drv_init, octeon_dev);
 atomic_store_rel_int(&octeon_dev->status, LIO_DEV_DISPATCH_INIT_DONE);

 ret = octeon_dev->fn_list.setup_device_regs(octeon_dev);
 if (ret) {
  lio_dev_err(octeon_dev,
       "Failed to configure device registers\n");
  return (ret);
 }


 if (lio_setup_sc_buffer_pool(octeon_dev)) {
  lio_dev_err(octeon_dev, "sc buffer pool allocation failed\n");
  return (1);
 }

 atomic_store_rel_int(&octeon_dev->status,
        LIO_DEV_SC_BUFF_POOL_INIT_DONE);

 if (lio_allocate_ioq_vector(octeon_dev)) {
  lio_dev_err(octeon_dev,
       "IOQ vector allocation failed\n");
  return (1);
 }

 atomic_store_rel_int(&octeon_dev->status,
        LIO_DEV_MSIX_ALLOC_VECTOR_DONE);

 for (i = 0; i < LIO_MAX_POSSIBLE_INSTR_QUEUES; i++) {
  octeon_dev->instr_queue[i] =
   malloc(sizeof(struct lio_instr_queue),
          M_DEVBUF, M_NOWAIT | M_ZERO);
  if (octeon_dev->instr_queue[i] == ((void*)0))
   return (1);
 }


 if (lio_setup_instr_queue0(octeon_dev)) {
  lio_dev_err(octeon_dev,
       "Instruction queue initialization failed\n");
  return (1);
 }

 atomic_store_rel_int(&octeon_dev->status,
        LIO_DEV_INSTR_QUEUE_INIT_DONE);






 if (lio_setup_response_list(octeon_dev)) {
  lio_dev_err(octeon_dev, "Response list allocation failed\n");
  return (1);
 }

 atomic_store_rel_int(&octeon_dev->status, LIO_DEV_RESP_LIST_INIT_DONE);

 for (i = 0; i < LIO_MAX_POSSIBLE_OUTPUT_QUEUES; i++) {
  octeon_dev->droq[i] = malloc(sizeof(*octeon_dev->droq[i]),
          M_DEVBUF, M_NOWAIT | M_ZERO);
  if (octeon_dev->droq[i] == ((void*)0))
   return (1);
 }

 if (lio_setup_output_queue0(octeon_dev)) {
  lio_dev_err(octeon_dev, "Output queue initialization failed\n");
  return (1);
 }

 atomic_store_rel_int(&octeon_dev->status, LIO_DEV_DROQ_INIT_DONE);




 if (lio_setup_interrupt(octeon_dev,
    octeon_dev->sriov_info.num_pf_rings))
  return (1);


 octeon_dev->fn_list.enable_interrupt(octeon_dev, OCTEON_ALL_INTR);

 atomic_store_rel_int(&octeon_dev->status, LIO_DEV_INTR_SET_DONE);
 for (j = 0; j < octeon_dev->num_oqs; j++)
  lio_write_csr32(octeon_dev,
    octeon_dev->droq[j]->pkts_credit_reg,
    octeon_dev->droq[j]->max_count);


 ret = octeon_dev->fn_list.enable_io_queues(octeon_dev);
 if (ret) {
  lio_dev_err(octeon_dev, "Failed to enable input/output queues");
  return (ret);
 }

 atomic_store_rel_int(&octeon_dev->status, LIO_DEV_IO_QUEUES_DONE);

 if (!fw_loaded) {
  lio_dev_dbg(octeon_dev, "Waiting for DDR initialization...\n");
  if (!ddr_timeout) {
   lio_dev_info(octeon_dev,
         "WAITING. Set ddr_timeout to non-zero value to proceed with initialization.\n");
  }

  lio_sleep_timeout(LIO_RESET_MSECS);





  while (!ddr_timeout) {
   if (pause("-", lio_ms_to_ticks(100))) {

    return (1);
   }
  }

  ret = lio_wait_for_ddr_init(octeon_dev, &ddr_timeout);
  if (ret) {
   lio_dev_err(octeon_dev,
        "DDR not initialized. Please confirm that board is configured to boot from Flash, ret: %d\n",
        ret);
   return (1);
  }

  if (lio_wait_for_bootloader(octeon_dev, 1100)) {
   lio_dev_err(octeon_dev, "Board not responding\n");
   return (1);
  }


  ret = lio_console_send_cmd(octeon_dev, bootcmd, 50);

  lio_dev_dbg(octeon_dev, "Initializing consoles\n");
  ret = lio_init_consoles(octeon_dev);
  if (ret) {
   lio_dev_err(octeon_dev, "Could not access board consoles\n");
   return (1);
  }






  dbg_enb = lio_console_debug_enabled(0) ? "" : ((void*)0);
  ret = lio_add_console(octeon_dev, 0, dbg_enb);

  if (ret) {
   lio_dev_err(octeon_dev, "Could not access board console\n");
   return (1);
  } else if (lio_console_debug_enabled(0)) {




   octeon_dev->console[0].print = lio_dbg_console_print;
  }

  atomic_store_rel_int(&octeon_dev->status,
         LIO_DEV_CONSOLE_INIT_DONE);

  lio_dev_dbg(octeon_dev, "Loading firmware\n");

  ret = lio_load_firmware(octeon_dev);
  if (ret) {
   lio_dev_err(octeon_dev, "Could not load firmware to board\n");
   return (1);
  }
 }

 atomic_store_rel_int(&octeon_dev->status, LIO_DEV_HOST_OK);

 return (0);
}
