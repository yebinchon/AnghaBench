
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct make_dev_args {size_t mda_size; } ;


 int bzero (struct make_dev_args*,size_t) ;

void
make_dev_args_init_impl(struct make_dev_args *args, size_t sz)
{

 bzero(args, sz);
 args->mda_size = sz;
}
