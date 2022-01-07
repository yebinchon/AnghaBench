
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwmbt_firmware {int dummy; } ;
typedef int libusb_device_handle ;


 int iwmbt_debug (char*,...) ;
 int iwmbt_fw_free (struct iwmbt_firmware*) ;
 scalar_t__ iwmbt_fw_read (struct iwmbt_firmware*,char const*) ;
 int iwmbt_load_fwfile (int *,struct iwmbt_firmware*,int *) ;

__attribute__((used)) static int
iwmbt_init_firmware(libusb_device_handle *hdl, const char *firmware_path,
    uint32_t *boot_param)
{
 struct iwmbt_firmware fw;
 int ret;

 iwmbt_debug("loading %s", firmware_path);


 if (iwmbt_fw_read(&fw, firmware_path) <= 0) {
  iwmbt_debug("iwmbt_fw_read() failed");
  return (-1);
 }


 ret = iwmbt_load_fwfile(hdl, &fw, boot_param);
 if (ret < 0)
  iwmbt_debug("Loading firmware file failed");


 iwmbt_fw_free(&fw);

 return (ret);
}
