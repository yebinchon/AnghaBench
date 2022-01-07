
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_cond; int s_file; scalar_t__ s_loading; } ;


 scalar_t__ CANY ;
 int Fclose (int ) ;
 scalar_t__ cond ;
 int input ;
 scalar_t__ loading ;
 int printf (char*) ;
 scalar_t__ sourcing ;
 size_t ssp ;
 TYPE_1__* sstack ;

int
unstack(void)
{
 if (ssp <= 0) {
  printf("\"Source\" stack over-pop.\n");
  sourcing = 0;
  return (1);
 }
 (void)Fclose(input);
 if (cond != CANY)
  printf("Unmatched \"if\"\n");
 ssp--;
 cond = sstack[ssp].s_cond;
 loading = sstack[ssp].s_loading;
 input = sstack[ssp].s_file;
 if (ssp == 0)
  sourcing = loading;
 return (0);
}
