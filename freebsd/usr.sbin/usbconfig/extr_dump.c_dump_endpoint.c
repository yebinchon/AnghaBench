
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LIBUSB20_ENDPOINT_DESC_DECODED {int dummy; } ;
struct libusb20_endpoint {int extra; struct LIBUSB20_ENDPOINT_DESC_DECODED desc; } ;
struct libusb20_device {int dummy; } ;


 int DUMP3 ;
 int LIBUSB20_ENDPOINT_DESC (int ,struct LIBUSB20_ENDPOINT_DESC_DECODED*) ;
 int dump_extra (int *,char*) ;

__attribute__((used)) static void
dump_endpoint(struct libusb20_device *pdev,
    struct libusb20_endpoint *ep)
{
 struct LIBUSB20_ENDPOINT_DESC_DECODED *edesc;

 edesc = &ep->desc;
 LIBUSB20_ENDPOINT_DESC(DUMP3, edesc);
 dump_extra(&ep->extra, "  " "  " "  ");
 return;
}
