
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {char* c_name; } ;


 struct cmd* cmdtab ;

__attribute__((used)) static struct cmd *
getcmd(const char *name)
{
 register const char *p, *q;
 register struct cmd *c, *found;
 register int nmatches, longest;

 longest = 0;
 nmatches = 0;
 found = ((void*)0);
 for (c = cmdtab; (p = c->c_name); c++) {
  for (q = name; *q == *p++; q++)
   if (*q == 0)
    return(c);
  if (!*q) {
   if (q - name > longest) {
    longest = q - name;
    nmatches = 1;
    found = c;
   } else if (q - name == longest)
    nmatches++;
  }
 }
 if (nmatches > 1)
  return((struct cmd *)-1);
 return(found);
}
