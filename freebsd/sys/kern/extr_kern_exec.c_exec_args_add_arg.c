
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_args {scalar_t__ envc; int argc; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int KASSERT (int,char*) ;
 int exec_args_add_str (struct image_args*,char const*,int,int *) ;

int
exec_args_add_arg(struct image_args *args, const char *argp,
    enum uio_seg segflg)
{

 KASSERT(args->envc == 0, ("appending args after env"));

 return (exec_args_add_str(args, argp, segflg, &args->argc));
}
