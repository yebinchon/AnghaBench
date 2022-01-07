
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmlock {int dummy; } ;


 int rm_init_flags (struct rmlock*,char const*,int ) ;

void
rm_init(struct rmlock *rm, const char *name)
{

 rm_init_flags(rm, name, 0);
}
