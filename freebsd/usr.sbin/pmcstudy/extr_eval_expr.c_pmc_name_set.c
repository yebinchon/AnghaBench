
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {char* name; } ;


 int exit (int) ;
 int printf (char*,char*,...) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,int ) ;
 int strtol (char*,int *,int ) ;
 int valid_pmc_cnt ;
 int * valid_pmcs ;

__attribute__((used)) static void
pmc_name_set(struct expression *at)
{
 int i, idx, fnd;

 if (at->name[0] == '%') {

  idx = strtol(&at->name[1], ((void*)0), 0);
  if (idx >= valid_pmc_cnt) {
   printf("Unknown PMC %s -- largest we have is $%d -- can't run your expression\n",
          at->name, valid_pmc_cnt);
   exit(-1);
  }
  strcpy(at->name, valid_pmcs[idx]);
 } else {
  for(i=0, fnd=0; i<valid_pmc_cnt; i++) {
   if (strcmp(valid_pmcs[i], at->name) == 0) {
    fnd = 1;
    break;
   }
  }
  if (!fnd) {
   printf("PMC %s does not exist on this machine -- can't run your expression\n",
          at->name);
   exit(-1);
  }
 }
}
