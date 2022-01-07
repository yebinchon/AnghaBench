
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union descriptor {int dummy; } descriptor ;
typedef int u_int ;
struct thread {int* td_retval; TYPE_2__* td_proc; } ;
struct proc_ldt {int ldt_len; scalar_t__ ldt_base; } ;
struct i386_ldt_args {int start; int num; scalar_t__ descs; } ;
struct TYPE_3__ {struct proc_ldt* md_ldt; } ;
struct TYPE_4__ {TYPE_1__ p_md; } ;


 int MAX_LD ;
 int M_TEMP ;
 int M_WAITOK ;
 int NLDT ;
 int bcopy (union descriptor*,char*,int) ;
 int copyout (char*,scalar_t__,int) ;
 int dt_lock ;
 int free (char*,int ) ;
 union descriptor* ldt ;
 char* malloc (int,int ,int ) ;
 int min (int,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int printf (char*,int,int,void*) ;

int
i386_get_ldt(struct thread *td, struct i386_ldt_args *uap)
{
 struct proc_ldt *pldt;
 char *data;
 u_int nldt, num;
 int error;






 num = min(uap->num, MAX_LD);
 data = malloc(num * sizeof(union descriptor), M_TEMP, M_WAITOK);
 mtx_lock_spin(&dt_lock);
 pldt = td->td_proc->p_md.md_ldt;
 nldt = pldt != ((void*)0) ? pldt->ldt_len : NLDT;
 if (uap->start >= nldt) {
  num = 0;
 } else {
  num = min(num, nldt - uap->start);
  bcopy(pldt != ((void*)0) ?
      &((union descriptor *)(pldt->ldt_base))[uap->start] :
      &ldt[uap->start], data, num * sizeof(union descriptor));
 }
 mtx_unlock_spin(&dt_lock);
 error = copyout(data, uap->descs, num * sizeof(union descriptor));
 if (error == 0)
  td->td_retval[0] = num;
 free(data, M_TEMP);
 return (error);
}
