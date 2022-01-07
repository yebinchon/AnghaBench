
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfjail {int dummy; } ;


 struct cfjail** bsearch (char const*,int *,int ,int,int ) ;
 int cmp_jailptr_name ;
 int * jails_byname ;
 int njails ;

__attribute__((used)) static struct cfjail *
find_jail(const char *name)
{
 struct cfjail **jp;

 if (jails_byname == ((void*)0))
  return ((void*)0);

 jp = bsearch(name, jails_byname, njails, sizeof(struct cfjail *),
     cmp_jailptr_name);
 return jp ? *jp : ((void*)0);
}
