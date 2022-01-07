
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysent {int dummy; } ;
struct syscall_module_data {int (* chainevh ) (struct module*,int,int ) ;int chainarg; int old_sysent; int * offset; int flags; int new_sysent; } ;
struct module {int dummy; } ;
struct TYPE_3__ {int intval; } ;
typedef TYPE_1__ modspecific_t ;


 int EOPNOTSUPP ;


 int MOD_XLOCK ;
 int MOD_XUNLOCK ;
 int kern_syscall_deregister (struct sysent*,int ,int *) ;
 int kern_syscall_register (struct sysent*,int *,int ,int *,int ) ;
 int module_setspecific (struct module*,TYPE_1__*) ;
 int stub1 (struct module*,int,int ) ;
 int stub2 (struct module*,int,int ) ;
 int stub3 (struct module*,int,int ) ;

int
kern_syscall_module_handler(struct sysent *sysents, struct module *mod,
    int what, void *arg)
{
 struct syscall_module_data *data = arg;
 modspecific_t ms;
 int error;

 switch (what) {
 case 129:
  error = kern_syscall_register(sysents, data->offset,
      data->new_sysent, &data->old_sysent, data->flags);
  if (error) {

   data->offset = ((void*)0);
   return (error);
  }
  ms.intval = *data->offset;
  MOD_XLOCK;
  module_setspecific(mod, &ms);
  MOD_XUNLOCK;
  if (data->chainevh)
   error = data->chainevh(mod, what, data->chainarg);
  return (error);
 case 128:





  if (data->offset == ((void*)0))
   return (0);
  if (data->chainevh) {
   error = data->chainevh(mod, what, data->chainarg);
   if (error)
    return error;
  }
  error = kern_syscall_deregister(sysents, *data->offset,
      &data->old_sysent);
  return (error);
 default:
  if (data->chainevh)
   return (data->chainevh(mod, what, data->chainarg));
  return (EOPNOTSUPP);
 }


}
