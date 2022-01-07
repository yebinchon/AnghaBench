
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ USB_VENDOR_HUAWEI ;

__attribute__((used)) static int
u3g_huawei_is_cdce(uint16_t idVendor, uint8_t bInterfaceSubClass,
    uint8_t bInterfaceProtocol)
{






 if (idVendor != USB_VENDOR_HUAWEI)
  goto done;

 switch (bInterfaceSubClass) {
 case 0x02:
  switch (bInterfaceProtocol) {
  case 0x16:
  case 0x46:
  case 0x76:
   return (1);
  default:
   break;
  }
  break;
 case 0x03:
  switch (bInterfaceProtocol) {
  case 0x16:
   return (1);
  default:
   break;
  }
  break;
 default:
  break;
 }
done:
 return (0);
}
