
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx_args {int sa_flags; int sa_desc; int sa_sx; } ;


 int sx_init_flags (int ,int ,int ) ;

void
sx_sysinit(void *arg)
{
 struct sx_args *sargs = arg;

 sx_init_flags(sargs->sa_sx, sargs->sa_desc, sargs->sa_flags);
}
