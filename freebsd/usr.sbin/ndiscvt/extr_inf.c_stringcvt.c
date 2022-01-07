
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assign {char const** vals; } ;


 struct assign* find_assign (char*,char const*) ;

__attribute__((used)) static const char *
stringcvt(const char *s)
{
 struct assign *manf;

 manf = find_assign("strings", s);
 if (manf == ((void*)0))
  return(s);
 return(manf->vals[0]);
}
