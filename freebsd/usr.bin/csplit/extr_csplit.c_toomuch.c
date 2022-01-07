
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 int SEEK_CUR ;
 int currfile ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fflush (int *) ;
 int fileno (int *) ;
 size_t fread (char*,int,int,int *) ;
 scalar_t__ fseeko (int *,size_t,int ) ;
 scalar_t__ ftello (int *) ;
 scalar_t__ ftruncate (int ,scalar_t__) ;
 long lineno ;
 int * overfile ;
 int rewind (int *) ;
 scalar_t__ truncofs ;

__attribute__((used)) static void
toomuch(FILE *ofp, long n)
{
 char buf[BUFSIZ];
 size_t i, nread;

 if (overfile != ((void*)0)) {




  if (fflush(overfile) != 0)
   err(1, "overflow");
  if (ftruncate(fileno(overfile), truncofs) != 0)
   err(1, "overflow");
  if (fclose(overfile) != 0)
   err(1, "overflow");
  overfile = ((void*)0);
 }

 if (n == 0)

  return;

 lineno -= n;





 do {
  if (ftello(ofp) < (off_t)sizeof(buf))
   rewind(ofp);
  else
   fseeko(ofp, -(off_t)sizeof(buf), SEEK_CUR);
  if (ferror(ofp))
   errx(1, "%s: can't seek", currfile);
  if ((nread = fread(buf, 1, sizeof(buf), ofp)) == 0)
   errx(1, "can't read overflowed output");
  if (fseeko(ofp, -(off_t)nread, SEEK_CUR) != 0)
   err(1, "%s", currfile);
  for (i = 1; i <= nread; i++)
   if (buf[nread - i] == '\n' && n-- == 0)
    break;
  if (ftello(ofp) == 0)
   break;
 } while (n > 0);
 if (fseeko(ofp, nread - i + 1, SEEK_CUR) != 0)
  err(1, "%s", currfile);





 overfile = ofp;
 truncofs = ftello(overfile);
}
