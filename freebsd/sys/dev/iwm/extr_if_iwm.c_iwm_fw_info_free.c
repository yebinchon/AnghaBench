
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_fw_info {int img; int * fw_fp; } ;


 int FIRMWARE_UNLOAD ;
 int firmware_put (int *,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void
iwm_fw_info_free(struct iwm_fw_info *fw)
{
 firmware_put(fw->fw_fp, FIRMWARE_UNLOAD);
 fw->fw_fp = ((void*)0);
 memset(fw->img, 0, sizeof(fw->img));
}
