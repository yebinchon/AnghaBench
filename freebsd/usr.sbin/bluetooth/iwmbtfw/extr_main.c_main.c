
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct iwmbt_version {int fw_variant; } ;
struct iwmbt_boot_params {int limited_cce; } ;
typedef int libusb_device_handle ;
typedef int libusb_device ;
typedef int libusb_context ;


 int _DEFAULT_IWMBT_FIRMWARE_PATH ;
 int exit (int) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 int iwmbt_debug (char*,...) ;
 int iwmbt_do_debug ;
 int iwmbt_do_info ;
 int iwmbt_dump_boot_params (struct iwmbt_boot_params*) ;
 int iwmbt_dump_version (struct iwmbt_version*) ;
 int iwmbt_err (char*,...) ;
 int * iwmbt_find_device (int *,scalar_t__,scalar_t__) ;
 int iwmbt_get_boot_params (int *,struct iwmbt_boot_params*) ;
 char* iwmbt_get_fwname (struct iwmbt_version*,struct iwmbt_boot_params*,char*,char*) ;
 int iwmbt_get_version (int *,struct iwmbt_version*) ;
 int iwmbt_info (char*) ;
 int iwmbt_init_ddc (int *,char*) ;
 int iwmbt_init_firmware (int *,char*,int *) ;
 int iwmbt_intel_reset (int *,int ) ;
 int iwmbt_set_event_mask (int *) ;
 int libusb_close (int *) ;
 int libusb_exit (int *) ;
 int libusb_init (int **) ;
 int libusb_kernel_driver_active (int *,int ) ;
 int libusb_open (int *,int **) ;
 int libusb_reset_device (int *) ;
 int libusb_strerror (int) ;
 int libusb_unref_device (int *) ;
 int optarg ;
 int parse_ugen_name (int ,scalar_t__*,scalar_t__*) ;
 char* strdup (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 libusb_context *ctx = ((void*)0);
 libusb_device *dev = ((void*)0);
 libusb_device_handle *hdl = ((void*)0);
 static struct iwmbt_version ver;
 static struct iwmbt_boot_params params;
 uint32_t boot_param;
 int r;
 uint8_t bus_id = 0, dev_id = 0;
 int devid_set = 0;
 int n;
 char *firmware_dir = ((void*)0);
 char *firmware_path = ((void*)0);
 int retcode = 1;


 while ((n = getopt(argc, argv, "Dd:f:hIm:p:v:")) != -1) {
  switch (n) {
  case 'd':
   devid_set = 1;
   if (parse_ugen_name(optarg, &bus_id, &dev_id) < 0)
    usage();
   break;
  case 'D':
   iwmbt_do_debug = 1;
   break;
  case 'f':
   if (firmware_dir)
    free(firmware_dir);
   firmware_dir = strdup(optarg);
   break;
  case 'I':
   iwmbt_do_info = 1;
   break;
  case 'h':
  default:
   usage();
   break;

  }
 }


 if (devid_set == 0) {
  usage();

 }


 r = libusb_init(&ctx);
 if (r != 0) {
  iwmbt_err("libusb_init failed: code %d", r);
  exit(127);
 }

 iwmbt_debug("opening dev %d.%d", (int) bus_id, (int) dev_id);


 dev = iwmbt_find_device(ctx, bus_id, dev_id);
 if (dev == ((void*)0)) {
  iwmbt_err("device not found");
  goto shutdown;
 }






 r = libusb_open(dev, &hdl);
 if (r != 0) {
  iwmbt_err("libusb_open() failed: code %d", r);
  goto shutdown;
 }


 r = libusb_kernel_driver_active(hdl, 0);
 if (r < 0) {
  iwmbt_err("libusb_kernel_driver_active() failed: code %d", r);
  goto shutdown;
 }
 if (r > 0) {
  iwmbt_info("Firmware has already been downloaded");
  retcode = 0;
  goto shutdown;
 }


 r = iwmbt_get_version(hdl, &ver);
 if (r < 0) {
  iwmbt_debug("iwmbt_get_version() failedL code %d", r);
  goto shutdown;
 }
 iwmbt_dump_version(&ver);
 iwmbt_debug("fw_variant=0x%02x", (int) ver.fw_variant);


 if (ver.fw_variant == 0x23) {
  iwmbt_info("Firmware has already been downloaded");
  retcode = 0;
  goto reset;
 }

 if (ver.fw_variant != 0x06){
  iwmbt_err("unknown fw_variant 0x%02x", (int) ver.fw_variant);
  goto shutdown;
 }


 r = iwmbt_get_boot_params(hdl, &params);
 if (r < 0) {
  iwmbt_debug("iwmbt_get_boot_params() failed!");
  goto shutdown;
 }
 iwmbt_dump_boot_params(&params);


 if (params.limited_cce != 0x00) {
  iwmbt_err("Unsupported Intel firmware loading method (%u)",
     params.limited_cce);
  goto shutdown;
 }


 if (firmware_dir == ((void*)0))
  firmware_dir = strdup(_DEFAULT_IWMBT_FIRMWARE_PATH);

 firmware_path = iwmbt_get_fwname(&ver, &params, firmware_dir, "sfi");
 if (firmware_path == ((void*)0))
  goto shutdown;

 iwmbt_debug("firmware_path = %s", firmware_path);


 r = iwmbt_init_firmware(hdl, firmware_path, &boot_param);
 free(firmware_path);
 if (r < 0)
  goto shutdown;

 iwmbt_info("Firmware download complete");

 r = iwmbt_intel_reset(hdl, boot_param);
 if (r < 0) {
  iwmbt_debug("iwmbt_intel_reset() failed!");
  goto shutdown;
 }

 iwmbt_info("Firmware operational");


 retcode = 0;


 r = iwmbt_get_version(hdl, &ver);
 if (r == 0)
  iwmbt_dump_version(&ver);


 firmware_path = iwmbt_get_fwname(&ver, &params, firmware_dir, "ddc");
 iwmbt_debug("ddc_path = %s", firmware_path);
 if (firmware_path != ((void*)0)) {
  r = iwmbt_init_ddc(hdl, firmware_path);
  if (r == 0)
   iwmbt_info("DDC download complete");
  free(firmware_path);
 }


 r = iwmbt_set_event_mask(hdl);
 if (r == 0)
  iwmbt_info("Intel Event Mask is set");

reset:


 r = libusb_reset_device(hdl);
 if (r != 0)
  iwmbt_err("libusb_reset_device() failed: %s",
      libusb_strerror(r));

shutdown:



 if (hdl != ((void*)0))
  libusb_close(hdl);

 if (dev != ((void*)0))
  libusb_unref_device(dev);

 if (ctx != ((void*)0))
  libusb_exit(ctx);

 if (retcode == 0)
  iwmbt_info("Firmware download is succesful!");
 else
  iwmbt_err("Firmware download failed!");

 return (retcode);
}
