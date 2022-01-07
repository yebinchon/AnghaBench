
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sd_type; scalar_t__ sd_p; scalar_t__ sd_dpl; } ;
union descriptor {TYPE_2__ sd; } ;
typedef int uint64_t ;
typedef size_t u_int ;
struct thread {size_t* td_retval; TYPE_1__* td_proc; } ;
struct proc_ldt {size_t ldt_len; scalar_t__ ldt_base; } ;
struct mdproc {struct proc_ldt* md_ldt; } ;
struct i386_ldt_args {int start; int num; scalar_t__ descs; } ;
struct TYPE_3__ {struct mdproc p_md; } ;


 int EACCES ;
 int EINVAL ;
 size_t LDT_AUTO_ALLOC ;
 size_t MAX_LD ;
 int NLDT ;
 scalar_t__ SEL_UPL ;
 int atomic_store_rel_64 (int *,int ) ;
 int dt_lock ;
 int i386_ldt_grow (struct thread*,size_t) ;
 int i386_set_ldt_data (struct thread*,size_t,int,union descriptor*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int printf (char*,int,int,void*) ;

int
i386_set_ldt(struct thread *td, struct i386_ldt_args *uap,
    union descriptor *descs)
{
 struct mdproc *mdp;
 struct proc_ldt *pldt;
 union descriptor *dp;
 u_int largest_ld, i;
 int error;





 error = 0;
 mdp = &td->td_proc->p_md;

 if (descs == ((void*)0)) {

  if (uap->start == 0 && uap->num == 0) {




   uap->start = NLDT;
   uap->num = MAX_LD - NLDT;
  }
  mtx_lock_spin(&dt_lock);
  if ((pldt = mdp->md_ldt) == ((void*)0) ||
      uap->start >= pldt->ldt_len) {
   mtx_unlock_spin(&dt_lock);
   return (0);
  }
  largest_ld = uap->start + uap->num;
  if (largest_ld > pldt->ldt_len)
   largest_ld = pldt->ldt_len;
  for (i = uap->start; i < largest_ld; i++)
   atomic_store_rel_64(&((uint64_t *)(pldt->ldt_base))[i],
       0);
  mtx_unlock_spin(&dt_lock);
  return (0);
 }

 if (uap->start != LDT_AUTO_ALLOC || uap->num != 1) {

  largest_ld = uap->start + uap->num;
  if (uap->start >= MAX_LD || largest_ld > MAX_LD)
   return (EINVAL);
 }


 for (i = 0; i < uap->num; i++) {
  dp = &descs[i];

  switch (dp->sd.sd_type) {
  case 132:
   dp->sd.sd_p = 0;
   break;
  case 139:
  case 133:
  case 143:
  case 128:
  case 141:
  case 140:
  case 131:
  case 134:
  case 130:
  case 138:
  case 129:
  case 136:
  case 135:
  case 142:
  case 137:
   return (EACCES);


  case 156:
  case 157:
  case 152:
  case 153:

   if (dp->sd.sd_p == 0)
    return (EACCES);
   break;
  case 151:
  case 150:
  case 147:
  case 146:
  case 149:
  case 148:
  case 145:
  case 144:
  case 159:
  case 158:
  case 155:
  case 154:
   break;
  default:
   return (EINVAL);
  }


  if (dp->sd.sd_p != 0 && dp->sd.sd_dpl != SEL_UPL)
   return (EACCES);
 }

 if (uap->start == LDT_AUTO_ALLOC && uap->num == 1) {

  mtx_lock_spin(&dt_lock);
  if ((pldt = mdp->md_ldt) == ((void*)0)) {
   if ((error = i386_ldt_grow(td, NLDT + 1))) {
    mtx_unlock_spin(&dt_lock);
    return (error);
   }
   pldt = mdp->md_ldt;
  }
again:




  dp = &((union descriptor *)(pldt->ldt_base))[NLDT];
  for (i = NLDT; i < pldt->ldt_len; ++i) {
   if (dp->sd.sd_type == 132)
    break;
   dp++;
  }
  if (i >= pldt->ldt_len) {
   if ((error = i386_ldt_grow(td, pldt->ldt_len+1))) {
    mtx_unlock_spin(&dt_lock);
    return (error);
   }
   goto again;
  }
  uap->start = i;
  error = i386_set_ldt_data(td, i, 1, descs);
  mtx_unlock_spin(&dt_lock);
 } else {
  largest_ld = uap->start + uap->num;
  mtx_lock_spin(&dt_lock);
  if (!(error = i386_ldt_grow(td, largest_ld))) {
   error = i386_set_ldt_data(td, uap->start, uap->num,
       descs);
  }
  mtx_unlock_spin(&dt_lock);
 }
 if (error == 0)
  td->td_retval[0] = uap->start;
 return (error);
}
