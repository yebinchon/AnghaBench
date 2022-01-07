
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_args {scalar_t__ stringspace; scalar_t__ envc; int * endp; int begin_envv; int * begin_argv; } ;
typedef scalar_t__ ssize_t ;


 int E2BIG ;
 int KASSERT (int ,char*) ;
 int memmove (int *,int *,int) ;

int
exec_args_adjust_args(struct image_args *args, size_t consume, ssize_t extend)
{
 ssize_t offset;

 KASSERT(args->endp != ((void*)0), ("endp not initialized"));
 KASSERT(args->begin_argv != ((void*)0), ("begin_argp not initialized"));

 offset = extend - consume;
 if (args->stringspace < offset)
  return (E2BIG);
 memmove(args->begin_argv + extend, args->begin_argv + consume,
     args->endp - args->begin_argv + consume);
 if (args->envc > 0)
  args->begin_envv += offset;
 args->endp += offset;
 args->stringspace -= offset;
 return (0);
}
