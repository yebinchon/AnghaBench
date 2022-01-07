
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_loading; int s_cond; int * s_file; } ;
typedef int FILE ;


 int CANY ;
 int Fclose (int *) ;
 int * Fopen (char*,char*) ;
 int SSTACK_SIZE ;
 int cond ;
 char* expand (char*) ;
 int * input ;
 scalar_t__ loading ;
 int printf (char*) ;
 int sourcing ;
 int ssp ;
 TYPE_1__* sstack ;
 int warn (char*,char*) ;

int
source(char **arglist)
{
 FILE *fi;
 char *cp;

 if ((cp = expand(*arglist)) == ((void*)0))
  return (1);
 if ((fi = Fopen(cp, "r")) == ((void*)0)) {
  warn("%s", cp);
  return (1);
 }
 if (ssp >= SSTACK_SIZE - 1) {
  printf("Too much \"sourcing\" going on.\n");
  (void)Fclose(fi);
  return (1);
 }
 sstack[ssp].s_file = input;
 sstack[ssp].s_cond = cond;
 sstack[ssp].s_loading = loading;
 ssp++;
 loading = 0;
 cond = CANY;
 input = fi;
 sourcing++;
 return (0);
}
