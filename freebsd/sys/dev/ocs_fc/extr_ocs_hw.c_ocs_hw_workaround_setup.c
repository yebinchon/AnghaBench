
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_13__ {int retain_tsend_io_length; void* ignore_send_frame; void* sglc_misreported; void* fw_version_too_low; void* override_fcfi; void* use_dif_sec_xri; void* use_dif_quarantine; void* disable_dump_loc; void* disable_ar_tgt_dif; void* use_unregistered_rpi; int unregistered_index; int unregistered_rid; void* fwrev; } ;
struct TYPE_10__ {int * count_method; scalar_t__* fw_name; } ;
struct TYPE_11__ {TYPE_1__ config; } ;
struct ocs_hw_s {char* hw_war_version; TYPE_6__ workaround; int os; TYPE_2__ sli; int * num_qentries; } ;
typedef TYPE_2__ sli4_t ;
typedef size_t sli4_qtype_e ;
struct TYPE_12__ {int workaround; int value; } ;
typedef TYPE_3__ hw_workaround_t ;


 scalar_t__ ARRAY_SIZE (TYPE_3__*) ;
 void* FALSE ;
 size_t SLI_QTYPE_EQ ;
 size_t SLI_QTYPE_MAX ;
 size_t SLI_QTYPE_RQ ;
 size_t SLI_QTYPE_WQ ;
 int SLI_RSRC_FCOE_RPI ;
 void* TRUE ;
 TYPE_3__* hw_workarounds ;
 scalar_t__ ocs_hw_workaround_match (struct ocs_hw_s*,TYPE_3__*) ;
 int ocs_log_debug (int ,char*,...) ;
 int ocs_log_err (int ,char*) ;
 int ocs_memset (TYPE_6__*,int ,int) ;
 void* parse_fw_version (char*) ;
 int sli_calc_max_qentries (TYPE_2__*) ;
 int sli_resource_alloc (TYPE_2__*,int ,int *,int *) ;

void
ocs_hw_workaround_setup(struct ocs_hw_s *hw)
{
 hw_workaround_t *w;
 sli4_t *sli4 = &hw->sli;
 uint32_t i;


 ocs_memset(&hw->workaround, 0, sizeof(hw->workaround));





 if (hw->hw_war_version) {
  hw->workaround.fwrev = parse_fw_version(hw->hw_war_version);
 } else {
  hw->workaround.fwrev = parse_fw_version((char*) sli4->config.fw_name[0]);
 }


 for (i = 0, w = hw_workarounds; i < ARRAY_SIZE(hw_workarounds); i++, w++) {
  if (ocs_hw_workaround_match(hw, w)) {
   switch(w->workaround) {

   case 132: {
    ocs_log_debug(hw->os, "Override: test: %d\n", w->value);
    break;
   }

   case 135: {
    ocs_log_debug(hw->os, "HW Workaround: retain TSEND IO length\n");
    hw->workaround.retain_tsend_io_length = 1;
    break;
   }
   case 138: {
    sli4_qtype_e q;

    ocs_log_debug(hw->os, "HW Workaround: override max_qentries: %d\n", w->value);
    for (q = SLI_QTYPE_EQ; q < SLI_QTYPE_MAX; q++) {
     if (hw->num_qentries[q] > w->value) {
      hw->num_qentries[q] = w->value;
     }
    }
    break;
   }
   case 137: {
    ocs_log_debug(hw->os, "HW Workaround: override RQ max_qentries: %d\n", w->value);
    if (hw->num_qentries[SLI_QTYPE_RQ] > w->value) {
     hw->num_qentries[SLI_QTYPE_RQ] = w->value;
    }
    break;
   }
   case 128: {
    ocs_log_debug(hw->os, "HW Workaround: set WQE count method=%d\n", w->value);
    sli4->config.count_method[SLI_QTYPE_WQ] = w->value;
    sli_calc_max_qentries(sli4);
    break;
   }
   case 134: {
    ocs_log_debug(hw->os, "HW Workaround: set RQE count method=%d\n", w->value);
    sli4->config.count_method[SLI_QTYPE_RQ] = w->value;
    sli_calc_max_qentries(sli4);
    break;
   }
   case 129:
    ocs_log_debug(hw->os, "HW Workaround: use unreg'd RPI if rnode->indicator == 0xFFFF\n");
    hw->workaround.use_unregistered_rpi = TRUE;




    if (sli_resource_alloc(&hw->sli, SLI_RSRC_FCOE_RPI, &hw->workaround.unregistered_rid,
     &hw->workaround.unregistered_index)) {
     ocs_log_err(hw->os, "sli_resource_alloc unregistered RPI failed\n");
     hw->workaround.use_unregistered_rpi = FALSE;
    }
    break;
   case 142:
    ocs_log_debug(hw->os, "HW Workaround: disable AR on T10-PI TSEND\n");
    hw->workaround.disable_ar_tgt_dif = TRUE;
    break;
   case 141:
    ocs_log_debug(hw->os, "HW Workaround: disable set_dump_loc\n");
    hw->workaround.disable_dump_loc = TRUE;
    break;
   case 131:
    ocs_log_debug(hw->os, "HW Workaround: use DIF quarantine\n");
    hw->workaround.use_dif_quarantine = TRUE;
    break;
   case 130:
    ocs_log_debug(hw->os, "HW Workaround: use DIF secondary xri\n");
    hw->workaround.use_dif_sec_xri = TRUE;
    break;
   case 136:
    ocs_log_debug(hw->os, "HW Workaround: override FCFI in SRB\n");
    hw->workaround.override_fcfi = TRUE;
    break;

   case 140:
    ocs_log_debug(hw->os, "HW Workaround: fw version is below the minimum for this driver\n");
    hw->workaround.fw_version_too_low = TRUE;
    break;
   case 133:
    ocs_log_debug(hw->os, "HW Workaround: SGLC misreported - chaining is enabled\n");
    hw->workaround.sglc_misreported = TRUE;
    break;
   case 139:
    ocs_log_debug(hw->os, "HW Workaround: not SEND_FRAME capable - disabled\n");
    hw->workaround.ignore_send_frame = TRUE;
    break;
   }
  }
 }
}
