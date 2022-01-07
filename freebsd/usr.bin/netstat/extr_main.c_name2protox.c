
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protox {int dummy; } ;
struct protoent {char** p_aliases; char const* p_name; } ;


 int endprotoent () ;
 struct protoent* getprotoent () ;
 struct protox* knownname (char const*) ;
 int setprotoent (int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static struct protox *
name2protox(const char *name)
{
 struct protox *tp;
 char **alias;
 struct protoent *p;





 if ((tp = knownname(name)) != ((void*)0))
  return (tp);

 setprotoent(1);
 while ((p = getprotoent()) != ((void*)0)) {

  for (alias = p->p_aliases; *alias; alias++)
   if (strcmp(name, *alias) == 0) {
    endprotoent();
    return (knownname(p->p_name));
   }
 }
 endprotoent();
 return (((void*)0));
}
