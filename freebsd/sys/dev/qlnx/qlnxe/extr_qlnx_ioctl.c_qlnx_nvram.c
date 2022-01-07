
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct TYPE_16__ {int cmd; int offset; } ;
typedef TYPE_1__ qlnx_nvram_t ;
struct TYPE_15__ {int mcp_nvm_resp; } ;
struct TYPE_17__ {TYPE_11__ cdev; } ;
typedef TYPE_2__ qlnx_host_t ;


 int ECORE_NVM_WRITE_NVRAM ;
 int ECORE_PUT_FILE_DATA ;
 int EINVAL ;







 int QL_DPRINT9 (TYPE_2__*,char*,int ,int) ;
 int ecore_mcp_nvm_del_file (TYPE_11__*,int ) ;
 int ecore_mcp_nvm_put_file_begin (TYPE_11__*,int ) ;
 int ecore_mcp_nvm_set_secure_mode (TYPE_11__*,int ) ;
 int qlnx_get_nvram_resp (TYPE_2__*,TYPE_1__*) ;
 int qlnx_read_nvram (TYPE_2__*,TYPE_1__*) ;
 int qlnx_write_nvram (TYPE_2__*,TYPE_1__*,int ) ;

__attribute__((used)) static int
qlnx_nvram(qlnx_host_t *ha, qlnx_nvram_t *nvram)
{
 int ret = 0;

 switch (nvram->cmd) {

 case 128:
  ret = qlnx_write_nvram(ha, nvram, ECORE_NVM_WRITE_NVRAM);
  break;

 case 131:
  ret = qlnx_write_nvram(ha, nvram, ECORE_PUT_FILE_DATA);
  break;

 case 130:
  ret = qlnx_read_nvram(ha, nvram);
  break;

 case 129:
  ret = ecore_mcp_nvm_set_secure_mode(&ha->cdev, nvram->offset);

  QL_DPRINT9(ha, "QLNX_NVRAM_CMD_SET_SECURE_MODE 			 resp = 0x%x ret = 0x%x exit\n",

    ha->cdev.mcp_nvm_resp, ret);
  break;

 case 134:
  ret = ecore_mcp_nvm_del_file(&ha->cdev, nvram->offset);

  QL_DPRINT9(ha, "QLNX_NVRAM_CMD_DEL_FILE 			 resp = 0x%x ret = 0x%x exit\n",

   ha->cdev.mcp_nvm_resp, ret);
  break;

 case 132:
  ret = ecore_mcp_nvm_put_file_begin(&ha->cdev, nvram->offset);

  QL_DPRINT9(ha, "QLNX_NVRAM_CMD_PUT_FILE_BEGIN 			 resp = 0x%x ret = 0x%x exit\n",

   ha->cdev.mcp_nvm_resp, ret);
  break;

 case 133:
  ret = qlnx_get_nvram_resp(ha, nvram);
  break;

 default:
  ret = EINVAL;
  break;
 }

 return (ret);
}
