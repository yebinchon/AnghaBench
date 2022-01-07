
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
print_guid(uint8_t *buf)
{
 int i, ascii;

 ascii = 1;
 for (i = 0; i < 24; i++) {
  if (buf[i] != 0 && (buf[i] < ' ' || buf[i] > 127)) {
   ascii = 0;
   break;
  }
 }
 if (ascii) {
  printf("'%.24s'", buf);
 } else {
  for (i = 0; i < 24; i++)
   printf("%02x", buf[i]);
 }
}
