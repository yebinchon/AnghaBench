
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int decimal_point ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
humantime(FILE *out, long sec, long centisec)
{
 long days, hrs, mins;

 days = sec / (60L * 60 * 24);
 sec %= (60L * 60 * 24);
 hrs = sec / (60L * 60);
 sec %= (60L * 60);
 mins = sec / 60;
 sec %= 60;

 fprintf(out, "\t");
 if (days)
  fprintf(out, "%ldd", days);
 if (hrs)
  fprintf(out, "%ldh", hrs);
 if (mins)
  fprintf(out, "%ldm", mins);
 fprintf(out, "%ld%c%02lds", sec, decimal_point, centisec);
}
