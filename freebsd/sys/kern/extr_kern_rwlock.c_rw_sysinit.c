
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rwlock {int dummy; } ;
struct rw_args {int ra_flags; int ra_desc; scalar_t__ ra_rw; } ;


 int rw_init_flags (struct rwlock*,int ,int ) ;

void
rw_sysinit(void *arg)
{
 struct rw_args *args;

 args = arg;
 rw_init_flags((struct rwlock *)args->ra_rw, args->ra_desc,
     args->ra_flags);
}
