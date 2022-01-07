
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_args {char* endp; scalar_t__ envc; char* begin_envv; } ;


 int KASSERT (int ,char*) ;

char *
exec_args_get_begin_envv(struct image_args *args)
{

 KASSERT(args->endp != ((void*)0), ("endp not initialized"));

 if (args->envc > 0)
  return (args->begin_envv);
 return (args->endp);
}
