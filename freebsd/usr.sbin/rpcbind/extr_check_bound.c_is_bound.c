
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdlist {TYPE_1__* nconf; struct fdlist* next; } ;
typedef int bool_t ;
struct TYPE_2__ {int nc_netid; } ;


 int TRUE ;
 int check_bound (struct fdlist*,char*) ;
 struct fdlist* fdhead ;
 scalar_t__ strcmp (int ,char*) ;

bool_t
is_bound(char *netid, char *uaddr)
{
 struct fdlist *fdl;

 for (fdl = fdhead; fdl; fdl = fdl->next)
  if (strcmp(fdl->nconf->nc_netid, netid) == 0)
   break;
 if (fdl == ((void*)0))
  return (TRUE);
 return (check_bound(fdl, uaddr));
}
