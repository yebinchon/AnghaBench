
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct alg {int name; } ;


 struct alg* algs ;
 size_t nitems (struct alg*) ;
 scalar_t__ strcasecmp (int ,char const*) ;

__attribute__((used)) static struct alg *
find_alg(const char *name)
{
 u_int i;

 for (i = 0; i < nitems(algs); i++)
  if (strcasecmp(algs[i].name, name) == 0)
   return (&algs[i]);
 return (((void*)0));
}
