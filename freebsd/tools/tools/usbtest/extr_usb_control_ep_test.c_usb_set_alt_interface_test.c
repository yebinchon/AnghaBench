
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct libusb20_device {int dummy; } ;
struct libusb20_config {int num_interface; TYPE_1__* interface; } ;
struct TYPE_2__ {int num_altsetting; } ;


 struct libusb20_device* find_usb_device (int,int) ;
 struct libusb20_config* libusb20_dev_alloc_config (struct libusb20_device*,int ) ;
 int libusb20_dev_close (struct libusb20_device*) ;
 int libusb20_dev_detach_kernel_driver (struct libusb20_device*,int) ;
 int libusb20_dev_free (struct libusb20_device*) ;
 int libusb20_dev_get_config_index (struct libusb20_device*) ;
 int libusb20_dev_open (struct libusb20_device*,int ) ;
 scalar_t__ libusb20_dev_set_alt_index (struct libusb20_device*,int,int) ;
 int printf (char*,...) ;

void
usb_set_alt_interface_test(uint16_t vid, uint16_t pid)
{
 struct libusb20_device *pdev;
 struct libusb20_config *config;

 int iter;
 int error;
 int errcnt;
 int n;
 int m;

 pdev = find_usb_device(vid, pid);
 if (pdev == ((void*)0)) {
  printf("USB device not found\n");
  return;
 }
 printf("Starting set alternate setting test "
     "for VID=0x%04x PID=0x%04x\n", vid, pid);

 config = libusb20_dev_alloc_config(pdev,
     libusb20_dev_get_config_index(pdev));
 if (config == ((void*)0)) {
  printf("Could not get configuration descriptor\n");
  libusb20_dev_free(pdev);
  return;
 }
 iter = 0;
 errcnt = 0;

 for (n = 0; n != config->num_interface; n++) {

  libusb20_dev_detach_kernel_driver(pdev, n);

  error = libusb20_dev_open(pdev, 0);
  if (error)
   printf("ERROR could not open device\n");


  for (m = 0; m != config->interface[n].num_altsetting; m++) {

   iter++;

   if (libusb20_dev_set_alt_index(pdev, n, m + 1)) {
    printf("ERROR on interface %d alt %d\n", n, m + 1);
    errcnt++;
   }
  }



  iter++;

  if (libusb20_dev_set_alt_index(pdev, n, 0)) {
   printf("ERROR on interface %d alt %d\n", n, 0);
   errcnt++;
  }
  libusb20_dev_close(pdev);
 }

 libusb20_dev_free(pdev);

 printf("\n"
     "Test summary\n"
     "============\n"
     "Interfaces tested: %d\n"
     "Errors: %d\n", iter, errcnt);
}
