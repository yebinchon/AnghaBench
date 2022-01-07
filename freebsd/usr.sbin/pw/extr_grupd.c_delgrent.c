
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_name; } ;


 int gr_update (int *,int ) ;

int
delgrent(struct group * grp)
{

 return (gr_update(((void*)0), grp->gr_name));
}
