
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mac {int dummy; } ;
struct image_args {scalar_t__ endp; int envc; scalar_t__ begin_argv; int argc; } ;


 int AUDIT_ARG_ARGV (scalar_t__,int ,scalar_t__) ;
 int AUDIT_ARG_ENVV (scalar_t__,int ,scalar_t__) ;
 int do_execve (struct thread*,struct image_args*,struct mac*) ;
 scalar_t__ exec_args_get_begin_envv (struct image_args*) ;

int
kern_execve(struct thread *td, struct image_args *args, struct mac *mac_p)
{

 AUDIT_ARG_ARGV(args->begin_argv, args->argc,
     exec_args_get_begin_envv(args) - args->begin_argv);
 AUDIT_ARG_ENVV(exec_args_get_begin_envv(args), args->envc,
     args->endp - exec_args_get_begin_envv(args));
 return (do_execve(td, args, mac_p));
}
