
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wint_t ;
typedef int FILE ;


 char WEOF ;
 scalar_t__ autostop ;
 scalar_t__ ferror (int *) ;
 char getwc (int *) ;
 int maxval ;
 char* positions ;
 int putwchar (char) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
c_cut(FILE *fp, const char *fname)
{
 wint_t ch;
 int col;
 char *pos;

 ch = 0;
 for (;;) {
  pos = positions + 1;
  for (col = maxval; col; --col) {
   if ((ch = getwc(fp)) == WEOF)
    goto out;
   if (ch == '\n')
    break;
   if (*pos++)
    (void)putwchar(ch);
  }
  if (ch != '\n') {
   if (autostop)
    while ((ch = getwc(fp)) != WEOF && ch != '\n')
     (void)putwchar(ch);
   else
    while ((ch = getwc(fp)) != WEOF && ch != '\n');
  }
  (void)putwchar('\n');
 }
out:
 if (ferror(fp)) {
  warn("%s", fname);
  return (1);
 }
 return (0);
}
