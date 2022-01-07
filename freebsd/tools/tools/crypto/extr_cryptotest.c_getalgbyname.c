
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alg {int name; } ;


 struct alg* algorithms ;
 int nitems (struct alg*) ;
 scalar_t__ streq (char const*,int ) ;

struct alg*
getalgbyname(const char* name)
{
 int i;

 for (i = 0; i < nitems(algorithms); i++)
  if (streq(name, algorithms[i].name))
   return &algorithms[i];
 return ((void*)0);
}
