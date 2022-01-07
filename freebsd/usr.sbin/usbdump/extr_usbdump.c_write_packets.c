
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usbcap {int wfd; } ;


 int EXIT_FAILURE ;
 int err (int ,char*) ;
 int htole32 (int const) ;
 int write (int ,int const*,int const) ;

__attribute__((used)) static void
write_packets(struct usbcap *p, const uint8_t *data, const int datalen)
{
 int len = htole32(datalen);
 int ret;

 ret = write(p->wfd, &len, sizeof(int));
 if (ret != sizeof(int)) {
  err(EXIT_FAILURE, "Could not write length "
      "field of USB data payload");
 }
 ret = write(p->wfd, data, datalen);
 if (ret != datalen) {
  err(EXIT_FAILURE, "Could not write "
      "complete USB data payload");
 }
}
