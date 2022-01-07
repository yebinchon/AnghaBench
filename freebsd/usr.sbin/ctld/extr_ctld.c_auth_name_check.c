
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_group {int dummy; } ;


 int auth_name_defined (struct auth_group const*) ;
 int * auth_name_find (struct auth_group const*,char const*) ;

int
auth_name_check(const struct auth_group *ag, const char *initiator_name)
{
 if (!auth_name_defined(ag))
  return (0);

 if (auth_name_find(ag, initiator_name) == ((void*)0))
  return (1);

 return (0);
}
