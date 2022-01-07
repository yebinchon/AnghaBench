
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_args {char* buf; int bufkva; } ;


 scalar_t__ exec_alloc_args_kva (int *) ;

int
exec_alloc_args(struct image_args *args)
{

 args->buf = (char *)exec_alloc_args_kva(&args->bufkva);
 return (0);
}
