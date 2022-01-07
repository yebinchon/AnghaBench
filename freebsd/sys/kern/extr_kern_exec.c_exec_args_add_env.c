
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_args {scalar_t__ envc; int endp; int begin_envv; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int exec_args_add_str (struct image_args*,char const*,int,scalar_t__*) ;

int
exec_args_add_env(struct image_args *args, const char *envp,
    enum uio_seg segflg)
{

 if (args->envc == 0)
  args->begin_envv = args->endp;

 return (exec_args_add_str(args, envp, segflg, &args->envc));
}
