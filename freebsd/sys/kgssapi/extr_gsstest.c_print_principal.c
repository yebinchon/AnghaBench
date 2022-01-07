
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* rpc_gss_principal_t ;
struct TYPE_3__ {int len; scalar_t__ name; } ;


 scalar_t__ isprint (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_principal(rpc_gss_principal_t principal)
{
 int i, len, n;
 uint8_t *p;

 len = principal->len;
 p = (uint8_t *) principal->name;
 while (len > 0) {
  n = len;
  if (n > 16)
   n = 16;
  for (i = 0; i < n; i++)
   printf("%02x ", p[i]);
  for (; i < 16; i++)
   printf("   ");
  printf("|");
  for (i = 0; i < n; i++)
   printf("%c", isprint(p[i]) ? p[i] : '.');
  printf("|\n");
  len -= n;
  p += n;
 }
}
