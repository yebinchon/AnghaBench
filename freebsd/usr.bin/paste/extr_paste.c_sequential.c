
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wint_t ;
typedef int FILE ;


 char WEOF ;
 char* delim ;
 int delimcnt ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 char getwc (int *) ;
 int putwchar (char) ;
 int * stdin ;
 int warn (char*,char*) ;

__attribute__((used)) static int
sequential(char **argv)
{
 FILE *fp;
 int cnt, failed, needdelim;
 wint_t ch;
 char *p;

 failed = 0;
 for (; (p = *argv); ++argv) {
  if (p[0] == '-' && !p[1])
   fp = stdin;
  else if (!(fp = fopen(p, "r"))) {
   warn("%s", p);
   failed = 1;
   continue;
  }
  cnt = needdelim = 0;
  while ((ch = getwc(fp)) != WEOF) {
   if (needdelim) {
    needdelim = 0;
    if (delim[cnt] != '\0')
     putwchar(delim[cnt]);
    if (++cnt == delimcnt)
     cnt = 0;
   }
   if (ch != '\n')
    putwchar(ch);
   else
    needdelim = 1;
  }
  if (needdelim)
   putwchar('\n');
  if (fp != stdin)
   (void)fclose(fp);
 }

 return (failed != 0);
}
