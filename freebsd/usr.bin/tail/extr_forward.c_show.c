
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fp; int file_name; } ;
typedef TYPE_1__ file_info_t ;


 int EOF ;
 int clearerr (int *) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fflush (int ) ;
 int getc (int *) ;
 int ierr (int ) ;
 TYPE_1__* last ;
 int no_files ;
 int oerr () ;
 int printfn (int ,int) ;
 int putchar (int) ;
 int qflag ;
 int stdout ;

__attribute__((used)) static int
show(file_info_t *file)
{
 int ch;

 while ((ch = getc(file->fp)) != EOF) {
  if (last != file && no_files > 1) {
   if (!qflag)
    printfn(file->file_name, 1);
   last = file;
  }
  if (putchar(ch) == EOF)
   oerr();
 }
 (void)fflush(stdout);
 if (ferror(file->fp)) {
  fclose(file->fp);
  file->fp = ((void*)0);
  ierr(file->file_name);
  return 0;
 }
 clearerr(file->fp);
 return 1;
}
