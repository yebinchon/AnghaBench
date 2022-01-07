
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_err (int,char*) ;
 unsigned char* malloc (size_t) ;
 int sprintf (unsigned char*,char*,...) ;

__attribute__((used)) static char *
chap_bin2hex(const char *bin, size_t bin_len)
{
 unsigned char *hex, *tmp, ch;
 size_t hex_len;
 size_t i;

 hex_len = bin_len * 2 + 3;
 hex = malloc(hex_len);
 if (hex == ((void*)0))
  log_err(1, "malloc");

 tmp = hex;
 tmp += sprintf(tmp, "0x");
 for (i = 0; i < bin_len; i++) {
  ch = bin[i];
  tmp += sprintf(tmp, "%02x", ch);
 }

 return (hex);
}
