
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct LIBUSB20_INTERFACE_DESC_DECODED {int dummy; } ;
struct libusb20_interface {scalar_t__ num_endpoints; scalar_t__ endpoints; int extra; struct LIBUSB20_INTERFACE_DESC_DECODED desc; } ;
struct libusb20_device {int dummy; } ;


 int DUMP2 ;
 int LIBUSB20_INTERFACE_DESC (int ,struct LIBUSB20_INTERFACE_DESC_DECODED*) ;
 int dump_endpoint (struct libusb20_device*,scalar_t__) ;
 int dump_extra (int *,char*) ;
 int printf (char*,scalar_t__) ;

__attribute__((used)) static void
dump_iface(struct libusb20_device *pdev,
    struct libusb20_interface *iface)
{
 struct LIBUSB20_INTERFACE_DESC_DECODED *idesc;
 uint8_t z;

 idesc = &iface->desc;
 LIBUSB20_INTERFACE_DESC(DUMP2, idesc);
 dump_extra(&iface->extra, "  " "  " "  ");

 for (z = 0; z != iface->num_endpoints; z++) {
  printf("\n     Endpoint %u\n", z);
  dump_endpoint(pdev, iface->endpoints + z);
 }
 return;
}
