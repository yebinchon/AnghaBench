
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_rm {int num_gprs; int last_free_gpr; int* allocmap; int num_used; int gpr_lock; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
emu_rm_gpr_alloc(struct emu_rm *rm, int count)
{
 int i, j;
 int allocated_gpr;

 allocated_gpr = rm->num_gprs;

 mtx_lock(&(rm->gpr_lock));
 if (rm->last_free_gpr + count <= rm->num_gprs) {
  allocated_gpr = rm->last_free_gpr;
  rm->last_free_gpr += count;
  rm->allocmap[allocated_gpr] = count;
  for (i = 1; i < count; i++)
   rm->allocmap[allocated_gpr + i] = -(count - i);
 } else {

  i = 0;
  allocated_gpr = rm->num_gprs;
  while (i < rm->last_free_gpr - count) {
   if (rm->allocmap[i] > 0) {
    i += rm->allocmap[i];
   } else {
    allocated_gpr = i;
    for (j = 1; j < count; j++) {
     if (rm->allocmap[i + j] != 0)
      allocated_gpr = rm->num_gprs;
    }
    if (allocated_gpr == i)
     break;
   }
  }
  if (allocated_gpr + count < rm->last_free_gpr) {
   rm->allocmap[allocated_gpr] = count;
   for (i = 1; i < count; i++)
    rm->allocmap[allocated_gpr + i] = -(count - i);

  }
 }
 if (allocated_gpr == rm->num_gprs)
  allocated_gpr = (-1);
 if (allocated_gpr >= 0)
  rm->num_used += count;
 mtx_unlock(&(rm->gpr_lock));
 return (allocated_gpr);
}
