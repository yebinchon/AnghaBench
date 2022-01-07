
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct tuple_callbacks {int dummy; } ;
typedef int device_t ;


 scalar_t__ cardbus_cis_debug ;
 int printf (char*,...) ;

__attribute__((used)) static int
decode_tuple_vers_1(device_t cbdev, device_t child, int id,
    int len, uint8_t *tupledata, uint32_t start, uint32_t *off,
    struct tuple_callbacks *info, void *argp)
{
 int i;

 if (cardbus_cis_debug) {
  printf("Product version: %d.%d\n", tupledata[0], tupledata[1]);
  printf("Product name: ");
  for (i = 2; i < len; i++) {
   if (tupledata[i] == '\0')
    printf(" | ");
   else if (tupledata[i] == 0xff)
    break;
   else
    printf("%c", tupledata[i]);
  }
  printf("\n");
 }
 return (0);
}
