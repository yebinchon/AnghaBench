
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_15__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int prop_buf ;
struct TYPE_24__ {int io_pending_recursing; int io_alloc_failed_count; int io_total_pending; int io_total_free; int io_pending_count; int io_active_count; int io_pending_list; int io_pending_lock; int vport_list; TYPE_3__* ocs; } ;
typedef TYPE_2__ ocs_xport_t ;
struct TYPE_23__ {scalar_t__ asic_type; } ;
struct TYPE_22__ {int watchdog_lock; TYPE_1__ sli; } ;
struct TYPE_25__ {scalar_t__ desc; int auto_xfer_rdy_size; scalar_t__ topology; scalar_t__ speed; scalar_t__ ethernet_license; scalar_t__ target_io_timer_sec; char const* fw_version; scalar_t__ num_vports; TYPE_15__ hw; int enable_tgt; scalar_t__ enable_ini; scalar_t__ config_tgt; int instance_index; scalar_t__ explicit_buffer_list; scalar_t__ esoc; scalar_t__ enable_hlm; } ;
typedef TYPE_3__ ocs_t ;
typedef int int32_t ;


 scalar_t__ FALSE ;
 int OCS_ESOC ;
 scalar_t__ OCS_FC_DIF_SEED ;
 scalar_t__ OCS_FC_RQ_SIZE_DEFAULT ;
 int OCS_HW_CB_DOMAIN ;
 int OCS_HW_CB_PORT ;
 int OCS_HW_CB_REMOTE_NODE ;
 int OCS_HW_CB_UNSOLICITED ;
 int OCS_HW_DIF_CAPABLE ;
 int OCS_HW_DIF_MODE ;
 scalar_t__ OCS_HW_DIF_MODE_INLINE ;
 scalar_t__ OCS_HW_DIF_MODE_SEPARATE ;
 int OCS_HW_DIF_SEED ;
 int OCS_HW_EMULATE_TARGET_WQE_TIMEOUT ;
 int OCS_HW_ETH_LICENSE ;
 int OCS_HW_FW_REV ;
 int OCS_HW_HIGH_LOGIN_MODE ;
 int OCS_HW_LINK_SPEED ;
 int OCS_HW_MAX_IO ;
 int OCS_HW_MAX_SGL ;
 int OCS_HW_MAX_VPORTS ;
 int OCS_HW_N_IO ;
 int OCS_HW_PREREGISTER_SGL ;
 int OCS_HW_RQ_DEFAULT_BUFFER_SIZE ;
 int OCS_HW_RQ_PROCESS_LIMIT ;
 scalar_t__ OCS_HW_RTN_SUCCESS ;
 int OCS_HW_TOPOLOGY ;
 scalar_t__ SLI4_ASIC_TYPE_LANCER ;
 scalar_t__ SLI4_SGE_MAX_RESERVED ;
 scalar_t__ TRUE ;
 int UINT32_MAX ;
 int io_pending_link ;
 int link ;
 int ocs_atomic_init (int *,int ) ;
 int ocs_domain_cb ;
 scalar_t__ ocs_get_property (char*,char*,int) ;
 int ocs_hw_callback (TYPE_15__*,int ,int ,TYPE_3__*) ;
 scalar_t__ ocs_hw_get (TYPE_15__*,int ,scalar_t__*) ;
 scalar_t__ ocs_hw_get_ptr (TYPE_15__*,int ) ;
 int ocs_hw_init (TYPE_15__*) ;
 scalar_t__ ocs_hw_set (TYPE_15__*,int ,scalar_t__) ;
 int ocs_hw_teardown (TYPE_15__*) ;
 int ocs_instance (TYPE_3__*) ;
 int ocs_io_t ;
 int ocs_list_init (int *,int ,int ) ;
 int ocs_lock_init (TYPE_3__*,int *,char*,int ) ;
 int ocs_log_debug (TYPE_3__*,char*,...) ;
 int ocs_log_err (TYPE_3__*,char*,...) ;
 int ocs_port_cb ;
 int ocs_remote_node_cb ;
 int ocs_scsi_ini_del_device (TYPE_3__*) ;
 int ocs_scsi_ini_new_device (TYPE_3__*) ;
 int ocs_scsi_tgt_del_device (TYPE_3__*) ;
 int ocs_scsi_tgt_new_device (TYPE_3__*) ;
 scalar_t__ ocs_strtoul (char*,int ,int ) ;
 int ocs_unsolicited_cb ;
 int ocs_vport_create_spec (TYPE_3__*,int ,int ,int ,scalar_t__,int ,int *,int *) ;
 int ocs_vport_spec_t ;
 scalar_t__ ocs_xport_initialize_auto_xfer_ready (TYPE_2__*) ;

int32_t
ocs_xport_initialize(ocs_xport_t *xport)
{
 ocs_t *ocs = xport->ocs;
 int32_t rc;
 uint32_t i;
 uint32_t max_hw_io;
 uint32_t max_sgl;
 uint32_t hlm;
 uint32_t rq_limit;
 uint32_t dif_capable;
 uint8_t dif_separate = 0;
 char prop_buf[32];


 uint8_t ini_device_set = FALSE;
 uint8_t tgt_device_set = FALSE;
 uint8_t hw_initialized = FALSE;

 ocs_hw_get(&ocs->hw, OCS_HW_MAX_IO, &max_hw_io);
 if (ocs_hw_set(&ocs->hw, OCS_HW_N_IO, max_hw_io) != OCS_HW_RTN_SUCCESS) {
  ocs_log_err(ocs, "%s: Can't set number of IOs\n", ocs->desc);
  return -1;
 }

 ocs_hw_get(&ocs->hw, OCS_HW_MAX_SGL, &max_sgl);
 max_sgl -= SLI4_SGE_MAX_RESERVED;

 if (ocs->enable_hlm) {
  ocs_hw_get(&ocs->hw, OCS_HW_HIGH_LOGIN_MODE, &hlm);
  if (!hlm) {
   ocs->enable_hlm = FALSE;
   ocs_log_err(ocs, "Cannot enable high login mode for this port\n");
  } else {
                        ocs_log_debug(ocs, "High login mode is enabled\n");
   if (ocs_hw_set(&ocs->hw, OCS_HW_HIGH_LOGIN_MODE, TRUE)) {
    ocs_log_err(ocs, "%s: Can't set high login mode\n", ocs->desc);
    return -1;
   }
  }
 }


 if (ocs->auto_xfer_rdy_size > 0 &&
     (ocs->auto_xfer_rdy_size < 2048 ||
      ocs->auto_xfer_rdy_size > 65536)) {
  ocs_log_err(ocs, "Auto XFER_RDY size is out of range (2K-64K)\n");
  return -1;
 }

 ocs_hw_get(&ocs->hw, OCS_HW_MAX_IO, &max_hw_io);

 if (ocs->auto_xfer_rdy_size > 0) {
  if (ocs_xport_initialize_auto_xfer_ready(xport)) {
   ocs_log_err(ocs, "%s: Failed auto xfer ready setup\n", ocs->desc);
   return -1;
  }
  if (ocs->esoc){
   ocs_hw_set(&ocs->hw, OCS_ESOC, TRUE);
  }
 }

 if (ocs->explicit_buffer_list) {

  ocs_hw_get(&ocs->hw, OCS_HW_PREREGISTER_SGL, &i);
  if (i == TRUE) {
   ocs_log_err(ocs, "Explicit Buffer List not supported on this device, not enabled\n");
  } else {
   ocs_hw_set(&ocs->hw, OCS_HW_PREREGISTER_SGL, FALSE);
  }
 }

 if (ocs_hw_set(&ocs->hw, OCS_HW_TOPOLOGY, ocs->topology) != OCS_HW_RTN_SUCCESS) {
  ocs_log_err(ocs, "%s: Can't set the toplogy\n", ocs->desc);
  return -1;
 }
 ocs_hw_set(&ocs->hw, OCS_HW_RQ_DEFAULT_BUFFER_SIZE, OCS_FC_RQ_SIZE_DEFAULT);

 if (ocs_hw_set(&ocs->hw, OCS_HW_LINK_SPEED, ocs->speed) != OCS_HW_RTN_SUCCESS) {
  ocs_log_err(ocs, "%s: Can't set the link speed\n", ocs->desc);
  return -1;
 }

 if (ocs_hw_set(&ocs->hw, OCS_HW_ETH_LICENSE, ocs->ethernet_license) != OCS_HW_RTN_SUCCESS) {
  ocs_log_err(ocs, "%s: Can't set the ethernet license\n", ocs->desc);
  return -1;
 }


 if (ocs->hw.sli.asic_type == SLI4_ASIC_TYPE_LANCER) {
  if (ocs_hw_set(&ocs->hw, OCS_HW_DIF_SEED, OCS_FC_DIF_SEED) != OCS_HW_RTN_SUCCESS) {
   ocs_log_err(ocs, "%s: Can't set the DIF seed\n", ocs->desc);
   return -1;
  }
 }


 if (0 == ocs_hw_get(&ocs->hw, OCS_HW_DIF_CAPABLE, &dif_capable)) {
  if (dif_capable) {
   if (ocs_get_property("dif_separate", prop_buf, sizeof(prop_buf)) == 0) {
    dif_separate = ocs_strtoul(prop_buf, 0, 0);
   }

   if ((rc = ocs_hw_set(&ocs->hw, OCS_HW_DIF_MODE,
         (dif_separate == 0 ? OCS_HW_DIF_MODE_INLINE : OCS_HW_DIF_MODE_SEPARATE)))) {
    ocs_log_err(ocs, "Requested DIF MODE not supported\n");
   }
  }
 }

 if (ocs->target_io_timer_sec) {
  ocs_log_debug(ocs, "setting target io timer=%d\n", ocs->target_io_timer_sec);
  ocs_hw_set(&ocs->hw, OCS_HW_EMULATE_TARGET_WQE_TIMEOUT, TRUE);
 }

 ocs_hw_callback(&ocs->hw, OCS_HW_CB_DOMAIN, ocs_domain_cb, ocs);
 ocs_hw_callback(&ocs->hw, OCS_HW_CB_REMOTE_NODE, ocs_remote_node_cb, ocs);
 ocs_hw_callback(&ocs->hw, OCS_HW_CB_UNSOLICITED, ocs_unsolicited_cb, ocs);
 ocs_hw_callback(&ocs->hw, OCS_HW_CB_PORT, ocs_port_cb, ocs);

 ocs->fw_version = (const char*) ocs_hw_get_ptr(&ocs->hw, OCS_HW_FW_REV);


 ocs_list_init(&xport->vport_list, ocs_vport_spec_t, link);
 ocs_lock_init(ocs, &xport->io_pending_lock, "io_pending_lock[%d]", ocs->instance_index);
 ocs_list_init(&xport->io_pending_list, ocs_io_t, io_pending_link);
 ocs_atomic_init(&xport->io_active_count, 0);
 ocs_atomic_init(&xport->io_pending_count, 0);
 ocs_atomic_init(&xport->io_total_free, 0);
 ocs_atomic_init(&xport->io_total_pending, 0);
 ocs_atomic_init(&xport->io_alloc_failed_count, 0);
 ocs_atomic_init(&xport->io_pending_recursing, 0);
 ocs_lock_init(ocs, &ocs->hw.watchdog_lock, " Watchdog Lock[%d]", ocs_instance(ocs));
 rc = ocs_hw_init(&ocs->hw);
 if (rc) {
  ocs_log_err(ocs, "ocs_hw_init failure\n");
  goto ocs_xport_init_cleanup;
 } else {
  hw_initialized = TRUE;
 }

 rq_limit = max_hw_io/2;
 if (ocs_hw_set(&ocs->hw, OCS_HW_RQ_PROCESS_LIMIT, rq_limit) != OCS_HW_RTN_SUCCESS) {
  ocs_log_err(ocs, "%s: Can't set the RQ process limit\n", ocs->desc);
 }

 if (ocs->config_tgt) {
  rc = ocs_scsi_tgt_new_device(ocs);
  if (rc) {
   ocs_log_err(ocs, "failed to initialize target\n");
   goto ocs_xport_init_cleanup;
  } else {
   tgt_device_set = TRUE;
  }
 }

 if (ocs->enable_ini) {
  rc = ocs_scsi_ini_new_device(ocs);
  if (rc) {
   ocs_log_err(ocs, "failed to initialize initiator\n");
   goto ocs_xport_init_cleanup;
  } else {
   ini_device_set = TRUE;
  }

 }


 if (ocs->num_vports != 0) {

  uint32_t max_vports;
  ocs_hw_get(&ocs->hw, OCS_HW_MAX_VPORTS, &max_vports);

  if (ocs->num_vports < max_vports) {
   ocs_log_debug(ocs, "Provisioning %d vports\n", ocs->num_vports);
   for (i = 0; i < ocs->num_vports; i++) {
    ocs_vport_create_spec(ocs, 0, 0, UINT32_MAX, ocs->enable_ini, ocs->enable_tgt, ((void*)0), ((void*)0));
   }
  } else {
   ocs_log_err(ocs, "failed to create vports. num_vports range should be (1-%d) \n", max_vports-1);
   goto ocs_xport_init_cleanup;
  }
 }

 return 0;

ocs_xport_init_cleanup:
 if (ini_device_set) {
  ocs_scsi_ini_del_device(ocs);
 }

 if (tgt_device_set) {
  ocs_scsi_tgt_del_device(ocs);
 }

 if (hw_initialized) {

  ocs_hw_teardown(&ocs->hw);
 }

 return -1;
}
