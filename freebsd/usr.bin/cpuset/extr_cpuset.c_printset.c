
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitset {int dummy; } ;


 scalar_t__ BIT_ISSET (int,int,struct bitset*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
printset(struct bitset *mask, int size)
{
 int once;
 int bit;

 for (once = 0, bit = 0; bit < size; bit++) {
  if (BIT_ISSET(size, bit, mask)) {
   if (once == 0) {
    printf("%d", bit);
    once = 1;
   } else
    printf(", %d", bit);
  }
 }
 printf("\n");
}
