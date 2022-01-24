#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sense_header_scsi {int dummy; } ;
struct pqi_registers {int dummy; } ;
struct pqi_pref_settings {int dummy; } ;
struct pqi_io_response {int dummy; } ;
struct pqi_dev_adminq_cap {int dummy; } ;
struct pqi_cap {int dummy; } ;
struct ioa_registers {int dummy; } ;
struct init_base_struct {int dummy; } ;
struct bmic_host_wellness_time {int dummy; } ;
struct bmic_host_wellness_driver_version {int dummy; } ;
struct admin_q_param {int dummy; } ;
typedef  int /*<<< orphan*/  reportlun_header_t ;
typedef  int /*<<< orphan*/  reportlun_ext_entry_t ;
typedef  int /*<<< orphan*/  reportlun_data_ext_t ;
typedef  int /*<<< orphan*/  raidmap_data_t ;
typedef  int /*<<< orphan*/  raid_path_error_info_elem_t ;
typedef  int /*<<< orphan*/  pqisrc_raid_req_t ;
typedef  int /*<<< orphan*/  pqisrc_raid_map_t ;
typedef  int /*<<< orphan*/  pqi_tmf_req_t ;
typedef  int /*<<< orphan*/  pqi_iu_layer_desc_t ;
typedef  int /*<<< orphan*/  pqi_dev_cap_t ;
typedef  int /*<<< orphan*/  pqi_aio_req_t ;
typedef  int /*<<< orphan*/  op_q_params ;
typedef  int /*<<< orphan*/  iu_header_t ;
typedef  int /*<<< orphan*/  gen_adm_resp_iu_t ;
typedef  int /*<<< orphan*/  gen_adm_req_iu_t ;
typedef  int /*<<< orphan*/  bmic_ident_physdev_t ;
typedef  int /*<<< orphan*/  bmic_ident_ctrl_t ;
typedef  int /*<<< orphan*/  aio_path_error_info_elem_t ;
typedef  int /*<<< orphan*/  SCSI3Addr_struct ;
typedef  int /*<<< orphan*/  RequestBlock_struct ;
typedef  int /*<<< orphan*/  PhysDevAddr_struct ;
typedef  int /*<<< orphan*/  MoreErrInfo_struct ;
typedef  int /*<<< orphan*/  LogDevAddr_struct ;
typedef  int /*<<< orphan*/  LUNAddr_struct ;
typedef  int /*<<< orphan*/  IOCTL_Command_struct ;
typedef  int /*<<< orphan*/  ErrorInfo_struct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1()
{   
    
    FUNC0(sizeof(SCSI3Addr_struct)== 2);
    FUNC0(sizeof(PhysDevAddr_struct) == 8);
    FUNC0(sizeof(LogDevAddr_struct)== 8);
    FUNC0(sizeof(LUNAddr_struct)==8);
    FUNC0(sizeof(RequestBlock_struct) == 20);
    FUNC0(sizeof(MoreErrInfo_struct)== 8);
    FUNC0(sizeof(ErrorInfo_struct)== 48);
    FUNC0(sizeof(IOCTL_Command_struct)== 86);
    FUNC0(sizeof(struct bmic_host_wellness_driver_version)== 42);
    FUNC0(sizeof(struct bmic_host_wellness_time)== 20);
    FUNC0(sizeof(struct pqi_dev_adminq_cap)== 8);
    FUNC0(sizeof(struct admin_q_param)== 4);
    FUNC0(sizeof(struct pqi_registers)== 256);
    FUNC0(sizeof(struct ioa_registers)== 4128);
    FUNC0(sizeof(struct pqi_pref_settings)==4);
    FUNC0(sizeof(struct pqi_cap)== 20);
    FUNC0(sizeof(iu_header_t)== 4);
    FUNC0(sizeof(gen_adm_req_iu_t)== 64);
    FUNC0(sizeof(gen_adm_resp_iu_t)== 64);
    FUNC0(sizeof(op_q_params) == 9);
    FUNC0(sizeof(raid_path_error_info_elem_t)== 276);
    FUNC0(sizeof(aio_path_error_info_elem_t)== 276);
    FUNC0(sizeof(struct init_base_struct)== 24);
    FUNC0(sizeof(pqi_iu_layer_desc_t)== 16);
    FUNC0(sizeof(pqi_dev_cap_t)== 576);
    FUNC0(sizeof(pqi_aio_req_t)== 128);
    FUNC0(sizeof(pqisrc_raid_req_t)== 128);
    FUNC0(sizeof(pqi_tmf_req_t)== 32);
    FUNC0(sizeof(struct pqi_io_response)== 16);
    FUNC0(sizeof(struct sense_header_scsi)== 8);
    FUNC0(sizeof(reportlun_header_t)==8);
    FUNC0(sizeof(reportlun_ext_entry_t)== 24);
    FUNC0(sizeof(reportlun_data_ext_t)== 32);
    FUNC0(sizeof(raidmap_data_t)==8);
    FUNC0(sizeof(pqisrc_raid_map_t)== 8256);
    FUNC0(sizeof(bmic_ident_ctrl_t)== 325);
    FUNC0(sizeof(bmic_ident_physdev_t)==2048);
  
}