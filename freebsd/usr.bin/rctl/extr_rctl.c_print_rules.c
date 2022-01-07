
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* humanize_amount (char*) ;
 char* humanize_ids (char*) ;
 int printf (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
print_rules(char *rules, int hflag, int nflag)
{
 char *rule;

 while ((rule = strsep(&rules, ",")) != ((void*)0)) {
  if (rule[0] == '\0')
   break;
  if (nflag == 0)
   rule = humanize_ids(rule);
  if (hflag)
   rule = humanize_amount(rule);
  printf("%s\n", rule);
 }
}
