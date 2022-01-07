
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TABCOUNT ;
 int TABSIZE ;
 int TABSTOP ;
 int f_print (int ,char*,...) ;
 int fout ;
 int fprintf (int ,char*,char*) ;
 int ptype (char const*,char const*,int ) ;
 scalar_t__ streq (char const*,char*) ;
 char* stringfix (char const*) ;
 int * tabstr ;

__attribute__((used)) static void
printit(const char *prefix, const char *type)
{
 int len;
 int tabs;


  len = fprintf(fout, "\txdr_%s,", stringfix(type));

 len += TABSIZE - 1;

 tabs = (TABSTOP - len + TABSIZE - 1)/TABSIZE;
 f_print(fout, "%s", &tabstr[TABCOUNT-tabs]);

 if (streq(type, "void")) {
  f_print(fout, "0");
 } else {
  f_print(fout, "sizeof ( ");

  ptype(prefix, type, 0);
  f_print(fout, ")");
 }
 f_print(fout, ",\n");
}
