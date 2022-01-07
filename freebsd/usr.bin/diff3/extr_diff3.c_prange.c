
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {scalar_t__ to; scalar_t__ from; } ;


 int printf (char*,...) ;

__attribute__((used)) static void
prange(struct range *rold)
{

 if (rold->to <= rold->from)
  printf("%da\n", rold->from - 1);
 else {
  printf("%d", rold->from);
  if (rold->to > rold->from+1)
   printf(",%d", rold->to - 1);
  printf("c\n");
 }
}
