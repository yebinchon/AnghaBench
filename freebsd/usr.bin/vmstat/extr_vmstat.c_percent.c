
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fmt ;
typedef int buf ;


 int snprintf (char*,int,char*,...) ;
 int xo_emit (char*,int,char*) ;

__attribute__((used)) static void
percent(const char *name, double pctv, int *over)
{
 int l;
 char buf[10];
 char fmt[128];

 snprintf(fmt, sizeof(fmt), " {:%s/%%*s}", name);
 l = snprintf(buf, sizeof(buf), "%.0f", pctv);
 if (l == 1 && *over) {
  xo_emit(fmt, 1, buf);
  (*over)--;
 } else
  xo_emit(fmt, 2, buf);
 if (l > 2)
  (*over)++;
}
