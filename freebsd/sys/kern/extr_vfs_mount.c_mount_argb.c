
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntarg {int dummy; } ;


 int KASSERT (int,char*) ;
 struct mntarg* mount_arg (struct mntarg*,char const*,int *,int ) ;

struct mntarg *
mount_argb(struct mntarg *ma, int flag, const char *name)
{

 KASSERT(name[0] == 'n' && name[1] == 'o',
     ("mount_argb(...,%s): name must start with 'no'", name));

 return (mount_arg(ma, name + (flag ? 2 : 0), ((void*)0), 0));
}
