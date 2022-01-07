
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int htonl (scalar_t__) ;
 int printf (char*,...) ;

__attribute__((used)) static void
show_mem(uint32_t *buf, uint32_t len)
{
 const char *s;
 int i, n = 8;

 while (len) {
  for (i = 0; len && i < n; i++, buf++, len -= 4) {
   s = i ? " " : "";
   printf("%s%08x", s, htonl(*buf));
  }
  printf("\n");
 }
}
