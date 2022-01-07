
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int * t_redirection; int t_name; } ;


 int * checked_strdup (char const*) ;
 int log_warnx (char*,char const*,int ) ;

int
target_set_redirection(struct target *target, const char *addr)
{

 if (target->t_redirection != ((void*)0)) {
  log_warnx("cannot set redirection to \"%s\" for "
      "target \"%s\"; already defined",
      addr, target->t_name);
  return (1);
 }

 target->t_redirection = checked_strdup(addr);

 return (0);
}
