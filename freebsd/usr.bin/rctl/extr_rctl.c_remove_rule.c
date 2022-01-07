
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSYS ;
 int enosys () ;
 scalar_t__ errno ;
 int rctl_remove_rule (char const*,scalar_t__,int *,int ) ;
 scalar_t__ strlen (char const*) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
remove_rule(const char *filter, const char *unexpanded_rule)
{
 int error;

 error = rctl_remove_rule(filter, strlen(filter) + 1, ((void*)0), 0);
 if (error != 0) {
  if (errno == ENOSYS)
   enosys();
  warn("failed to remove rule '%s'", unexpanded_rule);
 }

 return (error);
}
