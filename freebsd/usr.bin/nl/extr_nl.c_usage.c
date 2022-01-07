
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 (void)fprintf(stderr,
"usage: nl [-p] [-b type] [-d delim] [-f type] [-h type] [-i incr] [-l num]\n"
"          [-n format] [-s sep] [-v startnum] [-w width] [file]\n");
 exit(EXIT_FAILURE);
}
