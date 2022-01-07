
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*,...) ;
 int stdout ;
 scalar_t__ widemode ;

__attribute__((used)) static void
printhdr(int clientOnly, int serverOnly, int newStats)
{

 if (newStats) {
  printf(" [%s Read %s]  [%s Write %s]  "
      "%s[=========== Total ============]\n"
      " KB/t   tps    MB/s%s  KB/t   tps    MB/s%s  "
      "%sKB/t   tps    MB/s    ms  ql  %%b",
      widemode ? "========" : "=====",
      widemode ? "========" : "=====",
      widemode ? "========" : "=====",
      widemode ? "=======" : "====",
      widemode ? "[Commit ]  " : "",
      widemode ? "    ms" : "",
      widemode ? "    ms" : "",
      widemode ? "tps    ms  " : "");
 } else {
  printf("%s%6.6s %6.6s %6.6s %6.6s %6.6s %6.6s %6.6s %6.6s",
      ((serverOnly && clientOnly) ? "        " : " "),
      "GtAttr", "Lookup", "Rdlink", "Read", "Write", "Rename",
      "Access", "Rddir");
  if (widemode && clientOnly) {
   printf(" Attr Lkup BioR BioW Accs BioD");
  }
 }
 printf("\n");
 fflush(stdout);
}
