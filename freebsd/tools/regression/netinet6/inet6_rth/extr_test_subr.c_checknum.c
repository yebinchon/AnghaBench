
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINESIZE ;
 int fflush (int *) ;
 char* g_errbuf ;
 int g_fail ;
 char* g_funcname ;
 int g_pass ;
 char* g_testdesc ;
 int g_total ;
 int memset (void*,int ,int) ;
 int printf (char*) ;
 int snprintf (char*,int,char const*,...) ;

void
checknum(int expected, int got, int cmp, const char *desc)
{
 int len;
 int pass;
 int failed;
 char sbuf[LINESIZE];

 memset((void *)sbuf, 0, LINESIZE);
 snprintf(g_testdesc, LINESIZE, desc);

 failed = 1;
 pass = 0;
 g_total++;
 switch(cmp) {
 case 0:
  pass = (got == expected) ? 1 : 0;
  break;
 case 1:
  pass = (got > expected) ? 1 : 0;
  break;
 case -1:
  pass = (got < expected) ? 1 : 0;
  break;
 }
 if (pass != 0) {
  len = snprintf(sbuf, LINESIZE, "ok");
  g_pass++;
  failed = 0;
 } else {
  len = snprintf(sbuf, LINESIZE, "not ok");
  snprintf(g_errbuf, LINESIZE,
      " : Expected %d, but got %d", expected, got);
  g_fail++;
 }
 snprintf(sbuf + len, LINESIZE - len, " %d - %s (%s)",
     g_total, g_funcname, g_testdesc);
 printf(sbuf);
 if (failed)
  printf(g_errbuf);
 printf("\n");
 fflush(((void*)0));
 memset((void *)g_errbuf, 0, LINESIZE);
 memset((void *)g_testdesc, 0, LINESIZE);
}
