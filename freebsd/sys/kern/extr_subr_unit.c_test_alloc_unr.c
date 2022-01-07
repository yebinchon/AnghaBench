
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct unrhdr {int dummy; } ;


 int VPRINTF (char*,int) ;
 int alloc_unr (struct unrhdr*) ;
 int free_unr (struct unrhdr*,size_t) ;
 int no_alloc ;

__attribute__((used)) static void
test_alloc_unr(struct unrhdr *uh, u_int i, char a[])
{
 int j;

 if (a[i]) {
  VPRINTF("F %u\n", i);
  free_unr(uh, i);
  a[i] = 0;
 } else {
  no_alloc = 1;
  j = alloc_unr(uh);
  if (j != -1) {
   a[j] = 1;
   VPRINTF("A %d\n", j);
  }
  no_alloc = 0;
 }
}
