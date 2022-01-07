
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 int printf (char*,...) ;

__attribute__((used)) static void
simple_hex(void *ptr, size_t length, const char *separator)
{
 unsigned char *cp;
 u_int i;

 if (length == 0)
  return;
 cp = ptr;
 printf("%02x", cp[0]);
 for (i = 1; i < length; i++)
  printf("%s%02x", separator, cp[i]);
}
