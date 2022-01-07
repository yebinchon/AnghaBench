
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int pmcstat_skiplink ;
 scalar_t__ strncmp (char*,char*,int) ;

int
pmcpl_ct_configure(char *opt)
{

 if (strncmp(opt, "skiplink=", 9) == 0) {
  pmcstat_skiplink = atoi(opt+9);
 } else
  return (0);

 return (1);
}
