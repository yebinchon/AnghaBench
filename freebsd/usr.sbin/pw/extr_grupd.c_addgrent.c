
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;


 int gr_update (struct group*,int *) ;

int
addgrent(struct group * grp)
{
 return gr_update(grp, ((void*)0));
}
