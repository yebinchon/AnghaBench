
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ D_CONTEXT ;
 scalar_t__ D_EDIT ;
 int D_EXPANDTABS ;
 scalar_t__ D_GFORMAT ;
 scalar_t__ D_IFDEF ;
 scalar_t__ D_NORMAL ;
 scalar_t__ D_NREVERSE ;
 scalar_t__ D_REVERSE ;
 scalar_t__ D_UNIFIED ;
 int EOF ;
 int SEEK_SET ;
 scalar_t__ Tflag ;
 scalar_t__ diff_format ;
 int diff_output (char*,...) ;
 int fseek (int *,long,int ) ;
 long ftell (int *) ;
 int getc (int *) ;
 int ifdefname ;
 int inifdef ;
 int tabsize ;
 int warnx (char*) ;

__attribute__((used)) static int
fetch(long *f, int a, int b, FILE *lb, int ch, int oldfile, int flags)
{
 int i, j, c, lastc, col, nc;
 int newcol;





 if ((diff_format == D_IFDEF) && oldfile) {
  long curpos = ftell(lb);

  nc = f[a > b ? b : a - 1] - curpos;
  for (i = 0; i < nc; i++)
   diff_output("%c", getc(lb));
 }
 if (a > b)
  return (0);
 if (diff_format == D_IFDEF) {
  if (inifdef) {
   diff_output("#else /* %s%s */\n",
       oldfile == 1 ? "!" : "", ifdefname);
  } else {
   if (oldfile)
    diff_output("#ifndef %s\n", ifdefname);
   else
    diff_output("#ifdef %s\n", ifdefname);
  }
  inifdef = 1 + oldfile;
 }
 for (i = a; i <= b; i++) {
  fseek(lb, f[i - 1], SEEK_SET);
  nc = f[i] - f[i - 1];
  if ((diff_format != D_IFDEF && diff_format != D_GFORMAT) &&
      ch != '\0') {
   diff_output("%c", ch);
   if (Tflag && (diff_format == D_NORMAL || diff_format == D_CONTEXT
       || diff_format == D_UNIFIED))
    diff_output("\t");
   else if (diff_format != D_UNIFIED)
    diff_output(" ");
  }
  col = 0;
  for (j = 0, lastc = '\0'; j < nc; j++, lastc = c) {
   if ((c = getc(lb)) == EOF) {
    if (diff_format == D_EDIT || diff_format == D_REVERSE ||
        diff_format == D_NREVERSE)
     warnx("No newline at end of file");
    else
     diff_output("\n\\ No newline at end of "
         "file\n");
    return (0);
   }
   if (c == '\t' && (flags & D_EXPANDTABS)) {
    newcol = ((col/tabsize)+1)*tabsize;
    do {
     diff_output(" ");
    } while (++col < newcol);
   } else {
    if (diff_format == D_EDIT && j == 1 && c == '\n'
        && lastc == '.') {







     diff_output(".\n");
     return (i - a + 1);
    }
    diff_output("%c", c);
    col++;
   }
  }
 }
 return (0);
}
