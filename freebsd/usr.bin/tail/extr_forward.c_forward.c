
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; int st_size; } ;
typedef int off_t ;
typedef enum STYLE { ____Placeholder_STYLE } STYLE ;
typedef int FILE ;


 int EOF ;




 int SEEK_END ;
 int SEEK_SET ;
 int S_ISREG (int ) ;
 int bytes (int *,char const*,int ) ;
 scalar_t__ ferror (int *) ;
 int fflush (int ) ;
 int fseeko (int *,int ,int ) ;
 int getc (int *) ;
 int ierr (char const*) ;
 int lines (int *,char const*,int ) ;
 int oerr () ;
 int putchar (int) ;
 int rlines (int *,char const*,int ,struct stat*) ;
 int stdout ;

void
forward(FILE *fp, const char *fn, enum STYLE style, off_t off, struct stat *sbp)
{
 int ch;

 switch(style) {
 case 131:
  if (off == 0)
   break;
  if (S_ISREG(sbp->st_mode)) {
   if (sbp->st_size < off)
    off = sbp->st_size;
   if (fseeko(fp, off, SEEK_SET) == -1) {
    ierr(fn);
    return;
   }
  } else while (off--)
   if ((ch = getc(fp)) == EOF) {
    if (ferror(fp)) {
     ierr(fn);
     return;
    }
    break;
   }
  break;
 case 130:
  if (off == 0)
   break;
  for (;;) {
   if ((ch = getc(fp)) == EOF) {
    if (ferror(fp)) {
     ierr(fn);
     return;
    }
    break;
   }
   if (ch == '\n' && !--off)
    break;
  }
  break;
 case 129:
  if (S_ISREG(sbp->st_mode)) {
   if (sbp->st_size >= off &&
       fseeko(fp, -off, SEEK_END) == -1) {
    ierr(fn);
    return;
   }
  } else if (off == 0) {
   while (getc(fp) != EOF);
   if (ferror(fp)) {
    ierr(fn);
    return;
   }
  } else
   if (bytes(fp, fn, off))
    return;
  break;
 case 128:
  if (S_ISREG(sbp->st_mode))
   if (!off) {
    if (fseeko(fp, (off_t)0, SEEK_END) == -1) {
     ierr(fn);
     return;
    }
   } else
    rlines(fp, fn, off, sbp);
  else if (off == 0) {
   while (getc(fp) != EOF);
   if (ferror(fp)) {
    ierr(fn);
    return;
   }
  } else
   if (lines(fp, fn, off))
    return;
  break;
 default:
  break;
 }

 while ((ch = getc(fp)) != EOF)
  if (putchar(ch) == EOF)
   oerr();
 if (ferror(fp)) {
  ierr(fn);
  return;
 }
 (void)fflush(stdout);
}
