
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct indir {int shift; uintptr_t* array; scalar_t__ used; } ;
typedef int off_t ;
typedef int intmax_t ;


 int ENOSPC ;
 int KASSERT (int,char*) ;
 int NMASK ;
 int del_indir (struct indir*) ;
 int md_debug ;
 scalar_t__ new_indir (scalar_t__) ;
 scalar_t__ nshift ;
 int printf (char*,int ,void*) ;

__attribute__((used)) static int
s_write(struct indir *ip, off_t offset, uintptr_t ptr)
{
 struct indir *cip, *lip[10];
 int idx, li;
 uintptr_t up;

 if (md_debug > 1)
  printf("s_write(%jd, %p)\n", (intmax_t)offset, (void *)ptr);
 up = 0;
 li = 0;
 cip = ip;
 for (;;) {
  lip[li++] = cip;
  if (cip->shift) {
   idx = (offset >> cip->shift) & NMASK;
   up = cip->array[idx];
   if (up != 0) {
    cip = (struct indir *)up;
    continue;
   }

   cip->array[idx] =
       (uintptr_t)new_indir(cip->shift - nshift);
   if (cip->array[idx] == 0)
    return (ENOSPC);
   cip->used++;
   up = cip->array[idx];
   cip = (struct indir *)up;
   continue;
  }

  idx = offset & NMASK;
  up = cip->array[idx];
  if (up != 0)
   cip->used--;
  cip->array[idx] = ptr;
  if (ptr != 0)
   cip->used++;
  break;
 }
 if (cip->used != 0 || li == 1)
  return (0);
 li--;
 while (cip->used == 0 && cip != ip) {
  li--;
  idx = (offset >> lip[li]->shift) & NMASK;
  up = lip[li]->array[idx];
  KASSERT(up == (uintptr_t)cip, ("md screwed up"));
  del_indir(cip);
  lip[li]->array[idx] = 0;
  lip[li]->used--;
  cip = lip[li];
 }
 return (0);
}
