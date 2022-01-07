
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_17__ {int vlan_bitmap; int fabric_name_id; int fcf_mac_address; int fip_priority; int fcf_index; scalar_t__ fc; int sol; scalar_t__ val; } ;
struct TYPE_20__ {scalar_t__ next_index; TYPE_3__ fcf_entry; } ;
typedef TYPE_6__ sli4_res_fcoe_read_fcf_table_t ;
struct TYPE_21__ {scalar_t__ status; } ;
typedef TYPE_7__ sli4_mbox_command_header_t ;
struct TYPE_19__ {int domain; } ;
struct TYPE_18__ {int (* domain ) (int ,int ,TYPE_9__*) ;} ;
struct TYPE_15__ {scalar_t__ topology; int loop_map; int fc_id; int speed; } ;
struct TYPE_22__ {int os; TYPE_5__ args; TYPE_4__ callback; TYPE_1__ link; } ;
typedef TYPE_8__ ocs_hw_t ;
struct TYPE_16__ {int vlan; int loop; } ;
struct TYPE_23__ {void* is_nport; void* is_ethernet; TYPE_2__ map; int wwn; int address; int priority; int index; void* is_loop; void* is_fc; int fc_id; int speed; int member_0; } ;
typedef TYPE_9__ ocs_domain_record_t ;
struct TYPE_14__ {TYPE_6__* virt; } ;
typedef TYPE_10__ ocs_dma_t ;
typedef scalar_t__ int32_t ;


 int OCS_HW_DOMAIN_FOUND ;
 int SLI4_BMBX_SIZE ;
 scalar_t__ SLI4_FCOE_FCF_TABLE_LAST ;
 scalar_t__ SLI_LINK_TOPO_LOOP ;
 scalar_t__ SLI_LINK_TOPO_NPORT ;
 void* TRUE ;
 int ocs_free (int ,int *,int ) ;
 int ocs_hw_read_fcf (TYPE_8__*,scalar_t__) ;
 int ocs_log_test (int ,char*,...) ;
 int ocs_memcpy (int ,int ,int) ;
 int stub1 (int ,int ,TYPE_9__*) ;

__attribute__((used)) static int32_t
ocs_hw_cb_read_fcf(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_dma_t *dma = arg;
 sli4_mbox_command_header_t *hdr = (sli4_mbox_command_header_t *)mqe;

 if (status || hdr->status) {
  ocs_log_test(hw->os, "bad status cqe=%#x mqe=%#x\n",
    status, hdr->status);
 } else if (dma->virt) {
  sli4_res_fcoe_read_fcf_table_t *read_fcf = dma->virt;


  if (read_fcf->fcf_entry.fc ||
    (read_fcf->fcf_entry.val && !read_fcf->fcf_entry.sol)) {
   if (hw->callback.domain != ((void*)0)) {
    ocs_domain_record_t drec = {0};

    if (read_fcf->fcf_entry.fc) {




     drec.speed = hw->link.speed;
     drec.fc_id = hw->link.fc_id;
     drec.is_fc = TRUE;
     if (SLI_LINK_TOPO_LOOP == hw->link.topology) {
      drec.is_loop = TRUE;
      ocs_memcpy(drec.map.loop, hw->link.loop_map,
          sizeof(drec.map.loop));
     } else if (SLI_LINK_TOPO_NPORT == hw->link.topology) {
      drec.is_nport = TRUE;
     }
    } else {
     drec.index = read_fcf->fcf_entry.fcf_index;
     drec.priority = read_fcf->fcf_entry.fip_priority;


     ocs_memcpy(drec.address, read_fcf->fcf_entry.fcf_mac_address,
         sizeof(drec.address));
     ocs_memcpy(drec.wwn, read_fcf->fcf_entry.fabric_name_id,
         sizeof(drec.wwn));
     ocs_memcpy(drec.map.vlan, read_fcf->fcf_entry.vlan_bitmap,
         sizeof(drec.map.vlan));

     drec.is_ethernet = TRUE;
     drec.is_nport = TRUE;
    }

    hw->callback.domain(hw->args.domain,
      OCS_HW_DOMAIN_FOUND,
      &drec);
   }
  } else {

   ocs_log_test(hw->os, "ignore invalid FCF entry\n");
  }

  if (SLI4_FCOE_FCF_TABLE_LAST != read_fcf->next_index) {
   ocs_hw_read_fcf(hw, read_fcf->next_index);
  }
 }

 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);



 return 0;
}
