
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int * td_retval; } ;
struct modfind_args {int name; } ;
typedef int * module_t ;


 int ENOENT ;
 int MAXMODNAME ;
 int MOD_SLOCK ;
 int MOD_SUNLOCK ;
 int copyinstr (int ,char*,int,int ) ;
 int module_getid (int *) ;
 int * module_lookupbyname (char*) ;

int
sys_modfind(struct thread *td, struct modfind_args *uap)
{
 int error = 0;
 char name[MAXMODNAME];
 module_t mod;

 if ((error = copyinstr(uap->name, name, sizeof name, 0)) != 0)
  return (error);

 MOD_SLOCK;
 mod = module_lookupbyname(name);
 if (mod == ((void*)0))
  error = ENOENT;
 else
  td->td_retval[0] = module_getid(mod);
 MOD_SUNLOCK;
 return (error);
}
