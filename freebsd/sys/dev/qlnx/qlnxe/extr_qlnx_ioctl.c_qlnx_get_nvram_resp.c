
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int data_len; int * data; } ;
typedef TYPE_1__ qlnx_nvram_t ;
struct TYPE_9__ {int mcp_nvm_resp; } ;
struct TYPE_8__ {TYPE_5__ cdev; } ;
typedef TYPE_2__ qlnx_host_t ;


 int EINVAL ;
 int M_QLNXBUF ;
 int QL_DPRINT9 (TYPE_2__*,char*,int *,int ,int ,int) ;
 int copyout (int *,int *,int ) ;
 int ecore_mcp_nvm_resp (TYPE_5__*,int *) ;
 int free (int *,int ) ;
 int * qlnx_zalloc (int ) ;

__attribute__((used)) static int
qlnx_get_nvram_resp(qlnx_host_t *ha, qlnx_nvram_t *nvram)
{
 uint8_t *buf;
 int ret = 0;

 if ((nvram->data == ((void*)0)) || (nvram->data_len == 0))
  return (EINVAL);

 buf = qlnx_zalloc(nvram->data_len);


 ret = ecore_mcp_nvm_resp(&ha->cdev, buf);

 QL_DPRINT9(ha, "data = %p data_len = 0x%x 		 resp = 0x%x ret = 0x%x exit\n",

  nvram->data, nvram->data_len, ha->cdev.mcp_nvm_resp, ret);

 if (ret == 0) {
  ret = copyout(buf, nvram->data, nvram->data_len);
 }

 free(buf, M_QLNXBUF);

 return (ret);
}
