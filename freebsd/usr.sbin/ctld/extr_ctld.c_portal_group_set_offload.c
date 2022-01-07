
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct portal_group {int * pg_offload; int pg_name; } ;


 int * checked_strdup (char const*) ;
 int log_warnx (char*,char const*,int ) ;

int
portal_group_set_offload(struct portal_group *pg, const char *offload)
{

 if (pg->pg_offload != ((void*)0)) {
  log_warnx("cannot set offload to \"%s\" for "
      "portal-group \"%s\"; already defined",
      offload, pg->pg_name);
  return (1);
 }

 pg->pg_offload = checked_strdup(offload);

 return (0);
}
