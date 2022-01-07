
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int EPERM ;
 scalar_t__ SLOT (struct label*) ;
 scalar_t__ partition_enabled ;

__attribute__((used)) static int
partition_check(struct label *subject, struct label *object)
{

 if (partition_enabled == 0)
  return (0);

 if (subject == ((void*)0))
  return (0);

 if (SLOT(subject) == 0)
  return (0);






 if (object == ((void*)0))
  return (EPERM);

 if (SLOT(subject) == SLOT(object))
  return (0);

 return (EPERM);
}
