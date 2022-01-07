
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U8 ;


 int printf (char*,...) ;

__attribute__((used)) static void
print_spare_pools(U8 HotSparePool)
{
 int i;

 if (HotSparePool == 0) {
  printf("none");
  return;
 }
 for (i = 0; HotSparePool != 0; i++) {
  if (HotSparePool & 1) {
   printf("%d", i);
   if (HotSparePool == 1)
    break;
   printf(", ");
  }
  HotSparePool >>= 1;
 }
}
