
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protox {scalar_t__ pr_name; } ;


 struct protox** protoprotox ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static struct protox *
knownname(const char *name)
{
 struct protox **tpp, *tp;

 for (tpp = protoprotox; *tpp; tpp++)
  for (tp = *tpp; tp->pr_name; tp++)
   if (strcmp(tp->pr_name, name) == 0)
    return (tp);
 return (((void*)0));
}
