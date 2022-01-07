
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (char) ;

__attribute__((used)) static void
pmcpl_ct_fixup_pmcname(char *s)
{
 char *p;

 for (p = s; *p; p++)
  if (!isalnum(*p))
   *p = '_';
}
