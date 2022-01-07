
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pa_printfile; } ;


 TYPE_1__ args ;
 int fprintf (int ,char*) ;
 int pmcstat_displayheight ;
 int pmcstat_print_counters () ;
 int pmcstat_print_headers () ;

void
pmcstat_print_pmcs(void)
{
 static int linecount = 0;


 if (++linecount > pmcstat_displayheight) {
  (void) fprintf(args.pa_printfile, "\n");
  linecount = 1;
 }
 if (linecount == 1)
  pmcstat_print_headers();
 (void) fprintf(args.pa_printfile, "\n");

 pmcstat_print_counters();

 return;
}
