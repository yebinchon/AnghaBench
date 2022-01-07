
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device {int dummy; } ;
struct firmware {int datasize; int data; } ;
struct TYPE_2__ {char* card_name; } ;


 int EINVAL ;
 int FIRMWARE_UNLOAD ;
 char* LIO_FW_BASE_NAME ;
 int LIO_FW_NAME_SUFFIX ;
 char* LIO_FW_NAME_TYPE_NIC ;
 int LIO_MAX_FW_FILENAME_LEN ;
 struct firmware* firmware_get (char*) ;
 int firmware_put (struct firmware const*,int ) ;
 char* fw_type ;
 int lio_dev_err (struct octeon_device*,char*,char*) ;
 int lio_download_firmware (struct octeon_device*,int ,int ) ;
 TYPE_1__* lio_get_conf (struct octeon_device*) ;
 int sprintf (char*,char*,char*,char*,char*,int ) ;

__attribute__((used)) static int
lio_load_firmware(struct octeon_device *oct)
{
 const struct firmware *fw;
 char *tmp_fw_type = ((void*)0);
 int ret = 0;
 char fw_name[LIO_MAX_FW_FILENAME_LEN];

 if (fw_type[0] == '\0')
  tmp_fw_type = LIO_FW_NAME_TYPE_NIC;
 else
  tmp_fw_type = fw_type;

 sprintf(fw_name, "%s%s_%s%s", LIO_FW_BASE_NAME,
  lio_get_conf(oct)->card_name, tmp_fw_type, LIO_FW_NAME_SUFFIX);

 fw = firmware_get(fw_name);
 if (fw == ((void*)0)) {
  lio_dev_err(oct, "Request firmware failed. Could not find file %s.\n",
       fw_name);
  return (EINVAL);
 }

 ret = lio_download_firmware(oct, fw->data, fw->datasize);

 firmware_put(fw, FIRMWARE_UNLOAD);

 return (ret);
}
