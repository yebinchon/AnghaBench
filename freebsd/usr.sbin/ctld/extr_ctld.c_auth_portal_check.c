
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct auth_group {int dummy; } ;


 int auth_portal_defined (struct auth_group const*) ;
 int * auth_portal_find (struct auth_group const*,struct sockaddr_storage const*) ;

int
auth_portal_check(const struct auth_group *ag, const struct sockaddr_storage *sa)
{

 if (!auth_portal_defined(ag))
  return (0);

 if (auth_portal_find(ag, sa) == ((void*)0))
  return (1);

 return (0);
}
