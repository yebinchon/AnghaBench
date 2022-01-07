
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
an_printhex(const char *ptr, int len)
{
 int i;

 printf("[ ");
 for (i = 0; i < len; i++) {
  printf("%02x", ptr[i] & 0xFF);
  if (i < (len - 1))
   printf(":");
 }

 printf(" ]");
}
