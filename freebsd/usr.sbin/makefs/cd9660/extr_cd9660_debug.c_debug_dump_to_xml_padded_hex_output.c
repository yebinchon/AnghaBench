
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
debug_dump_to_xml_padded_hex_output(const char *element, unsigned char *buf,
        int len)
{
 int i;
 int t;

 printf("<%s>",element);
 for (i = 0; i < len; i++) {
  t = (unsigned char)buf[i];
  if (t >= 32 && t < 127)
   printf("%c",t);
 }
 printf("</%s>\n",element);

 printf("<%s:hex>",element);
 for (i = 0; i < len; i++) {
  t = (unsigned char)buf[i];
  printf(" %x",t);
 }
 printf("</%s:hex>\n",element);
}
