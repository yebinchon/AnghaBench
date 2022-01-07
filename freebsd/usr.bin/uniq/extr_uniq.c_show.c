
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ cflag ;
 scalar_t__ dflag ;
 int fprintf (int *,char*,char const*,...) ;
 scalar_t__ repeats ;
 scalar_t__ uflag ;

__attribute__((used)) static void
show(FILE *ofp, const char *str)
{

 if ((dflag && repeats == 0) || (uflag && repeats > 0))
  return;
 if (cflag)
  (void)fprintf(ofp, "%4d %s", repeats + 1, str);
 else
  (void)fprintf(ofp, "%s", str);
}
