
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwmbt_firmware {int dummy; } ;
typedef int libusb_device_handle ;


 int iwmbt_debug (char*,...) ;
 int iwmbt_fw_free (struct iwmbt_firmware*) ;
 scalar_t__ iwmbt_fw_read (struct iwmbt_firmware*,char const*) ;
 int iwmbt_load_ddc (int *,struct iwmbt_firmware*) ;

__attribute__((used)) static int
iwmbt_init_ddc(libusb_device_handle *hdl, const char *ddc_path)
{
 struct iwmbt_firmware ddc;
 int ret;

 iwmbt_debug("loading %s", ddc_path);


 if (iwmbt_fw_read(&ddc, ddc_path) <= 0) {
  iwmbt_debug("iwmbt_fw_read() failed");
  return (-1);
 }


 ret = iwmbt_load_ddc(hdl, &ddc);
 if (ret < 0)
  iwmbt_debug("Loading DDC file failed");


 iwmbt_fw_free(&ddc);

 return (ret);
}
