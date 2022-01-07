
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct unrhdr {int map; } ;
struct unrb {int map; } ;
struct unr {int len; struct unrhdr* ptr; } ;


 scalar_t__ bit_test (int ,scalar_t__) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_unr(struct unrhdr *uh, struct unr *up)
{
 u_int x;
 struct unrb *ub;

 printf("  %p len = %5u ", up, up->len);
 if (up->ptr == ((void*)0))
  printf("free\n");
 else if (up->ptr == uh)
  printf("alloc\n");
 else {
  ub = up->ptr;
  printf("bitmap [");
  for (x = 0; x < up->len; x++) {
   if (bit_test(ub->map, x))
    printf("#");
   else
    printf(" ");
  }
  printf("]\n");
 }
}
