
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NCONF ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int * studentpct ;

__attribute__((used)) static void
usage(char const *whine)
{
 int i;

 fprintf(stderr, "%s\n", whine);
 fprintf(stderr,
     "Usage: ministat [-C column] [-c confidence] [-d delimiter(s)] [-Ans] [-w width] [file [file ...]]\n");
 fprintf(stderr, "\tconfidence = {");
 for (i = 0; i < NCONF; i++) {
  fprintf(stderr, "%s%g%%",
      i ? ", " : "",
      studentpct[i]);
 }
 fprintf(stderr, "}\n");
 fprintf(stderr, "\t-A : print statistics only. suppress the graph.\n");
 fprintf(stderr, "\t-C : column number to extract (starts and defaults to 1)\n");
 fprintf(stderr, "\t-d : delimiter(s) string, default to \" \\t\"\n");
 fprintf(stderr, "\t-n : print summary statistics only, no graph/test\n");
 fprintf(stderr, "\t-s : print avg/median/stddev bars on separate lines\n");
 fprintf(stderr, "\t-w : width of graph/test output (default 74 or terminal width)\n");
 exit (2);
}
