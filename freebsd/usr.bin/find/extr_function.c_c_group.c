
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct group {scalar_t__ gr_gid; } ;
typedef scalar_t__ gid_t ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {scalar_t__ g_data; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ OPTION ;


 int FTS_NOSTAT ;
 scalar_t__ atoi (char*) ;
 int errx (int,char*,int ,char*) ;
 scalar_t__ find_parsenum (TYPE_1__*,int ,char*,int *) ;
 int ftsoptions ;
 struct group* getgrnam (char*) ;
 char* nextarg (TYPE_2__*,char***) ;
 TYPE_1__* palloc (TYPE_2__*) ;

PLAN *
c_group(OPTION *option, char ***argvp)
{
 char *gname;
 PLAN *new;
 struct group *g;
 gid_t gid;

 gname = nextarg(option, argvp);
 ftsoptions &= ~FTS_NOSTAT;

 new = palloc(option);
 g = getgrnam(gname);
 if (g == ((void*)0)) {
  char* cp = gname;
  if (gname[0] == '-' || gname[0] == '+')
   gname++;
  gid = atoi(gname);
  if (gid == 0 && gname[0] != '0')
   errx(1, "%s: %s: no such group", option->name, gname);
  gid = find_parsenum(new, option->name, cp, ((void*)0));
 } else
  gid = g->gr_gid;

 new->g_data = gid;
 return new;
}
