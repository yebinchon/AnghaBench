
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timespec {int tv_sec; int tv_nsec; } ;
struct stat {scalar_t__ st_ino; scalar_t__ st_dev; scalar_t__ st_nlink; } ;
struct kevent {int dummy; } ;
typedef int off_t ;
struct TYPE_9__ {int file_name; int * fp; struct stat st; } ;
typedef TYPE_1__ file_info_t ;
typedef enum STYLE { ____Placeholder_STYLE } STYLE ;
struct TYPE_10__ {int ident; int data; int filter; } ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int EVFILT_READ ;
 scalar_t__ Fflag ;
 int SEEK_END ;
 scalar_t__ STDIN_FILENO ;


 int action ;
 int err (int,char*) ;
 scalar_t__ errno ;
 TYPE_4__* ev ;
 int fa ;
 int fclose (int *) ;
 void* fileargs_fopen (int ,int ,char*) ;
 scalar_t__ fileno (int *) ;
 int forward (int *,int ,int,int ,struct stat*) ;
 int fstat (scalar_t__,struct stat*) ;
 int ierr (int ) ;
 int kevent (scalar_t__,int *,int ,TYPE_4__*,int,struct timespec*) ;
 scalar_t__ kq ;
 scalar_t__ kqueue () ;
 TYPE_1__* last ;
 int lseek (int ,int ,int ) ;
 TYPE_4__* malloc (int) ;
 int memcpy (struct stat*,struct stat*,int) ;
 int no_files ;
 int printfn (int ,int) ;
 int qflag ;
 int set_events (TYPE_1__*) ;
 int show (TYPE_1__*) ;
 int usleep (int) ;

void
follow(file_info_t *files, enum STYLE style, off_t off)
{
 int active, ev_change, i, n = -1;
 struct stat sb2;
 file_info_t *file;
 FILE *ftmp;
 struct timespec ts;



 file = files;
 active = 0;
 n = 0;
 for (i = 0; i < no_files; i++, file++) {
  if (file->fp) {
   active = 1;
   n++;
   if (no_files > 1 && !qflag)
    printfn(file->file_name, 1);
   forward(file->fp, file->file_name, style, off, &file->st);
   if (Fflag && fileno(file->fp) != STDIN_FILENO)
    n++;
  }
 }
 if (!Fflag && !active)
  return;

 last = --file;

 kq = kqueue();
 if (kq < 0)
  err(1, "kqueue");
 ev = malloc(n * sizeof(struct kevent));
 if (! ev)
     err(1, "Couldn't allocate memory for kevents.");
 set_events(files);

 for (;;) {
  ev_change = 0;
  if (Fflag) {
   for (i = 0, file = files; i < no_files; i++, file++) {
    if (!file->fp) {
     file->fp =
         fileargs_fopen(fa, file->file_name,
         "r");
     if (file->fp != ((void*)0) &&
         fstat(fileno(file->fp), &file->st)
         == -1) {
      fclose(file->fp);
      file->fp = ((void*)0);
     }
     if (file->fp != ((void*)0))
      ev_change++;
     continue;
    }
    if (fileno(file->fp) == STDIN_FILENO)
     continue;
    ftmp = fileargs_fopen(fa, file->file_name, "r");
    if (ftmp == ((void*)0) ||
        fstat(fileno(file->fp), &sb2) == -1) {
     if (errno != ENOENT)
      ierr(file->file_name);
     show(file);
     if (file->fp != ((void*)0)) {
      fclose(file->fp);
      file->fp = ((void*)0);
     }
     if (ftmp != ((void*)0)) {
      fclose(ftmp);
     }
     ev_change++;
     continue;
    }

    if (sb2.st_ino != file->st.st_ino ||
        sb2.st_dev != file->st.st_dev ||
        sb2.st_nlink == 0) {
     show(file);
     fclose(file->fp);
     file->fp = ftmp;
     memcpy(&file->st, &sb2,
         sizeof(struct stat));
     ev_change++;
    } else {
     fclose(ftmp);
    }
   }
  }

  for (i = 0, file = files; i < no_files; i++, file++)
   if (file->fp && !show(file))
    ev_change++;

  if (ev_change)
   set_events(files);

  switch (action) {
  case 129:
   ts.tv_sec = 1;
   ts.tv_nsec = 0;




   n = kevent(kq, ((void*)0), 0, ev, 1, Fflag ? &ts : ((void*)0));
   if (n < 0)
    err(1, "kevent");
   if (n == 0) {

    break;
   } else if (ev->filter == EVFILT_READ && ev->data < 0) {

    if (lseek(ev->ident, (off_t)0, SEEK_END) == -1) {
     ierr(file->file_name);
     continue;
    }
   }
   break;

  case 128:
   (void) usleep(250000);
   break;
  }
 }
}
