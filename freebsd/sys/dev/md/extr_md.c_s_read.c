
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct indir {int shift; uintptr_t* array; } ;
typedef int off_t ;
typedef int intmax_t ;


 int NMASK ;
 int md_debug ;
 int printf (char*,int ) ;

__attribute__((used)) static uintptr_t
s_read(struct indir *ip, off_t offset)
{
 struct indir *cip;
 int idx;
 uintptr_t up;

 if (md_debug > 1)
  printf("s_read(%jd)\n", (intmax_t)offset);
 up = 0;
 for (cip = ip; cip != ((void*)0);) {
  if (cip->shift) {
   idx = (offset >> cip->shift) & NMASK;
   up = cip->array[idx];
   cip = (struct indir *)up;
   continue;
  }
  idx = offset & NMASK;
  return (cip->array[idx]);
 }
 return (0);
}
