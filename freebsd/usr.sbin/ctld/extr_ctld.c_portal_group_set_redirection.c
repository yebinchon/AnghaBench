
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct portal_group {int * pg_redirection; int pg_name; } ;


 int * checked_strdup (char const*) ;
 int log_warnx (char*,char const*,int ) ;

int
portal_group_set_redirection(struct portal_group *pg, const char *addr)
{

 if (pg->pg_redirection != ((void*)0)) {
  log_warnx("cannot set redirection to \"%s\" for "
      "portal-group \"%s\"; already defined",
      addr, pg->pg_name);
  return (1);
 }

 pg->pg_redirection = checked_strdup(addr);

 return (0);
}
