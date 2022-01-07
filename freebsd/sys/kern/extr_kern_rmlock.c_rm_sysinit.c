
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm_args {int ra_flags; int ra_desc; int ra_rm; } ;


 int rm_init_flags (int ,int ,int ) ;

void
rm_sysinit(void *arg)
{
 struct rm_args *args;

 args = arg;
 rm_init_flags(args->ra_rm, args->ra_desc, args->ra_flags);
}
