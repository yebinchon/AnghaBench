
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct statfs {int f_flags; } ;
struct TYPE_3__ {int fp; } ;
typedef TYPE_1__ file_info_t ;


 int EVFILT_READ ;
 int EVFILT_VNODE ;
 int EV_ADD ;
 int EV_CLEAR ;
 int EV_ENABLE ;
 int EV_SET (int *,scalar_t__,int ,int,int,int ,int ) ;
 scalar_t__ Fflag ;
 int MNT_LOCAL ;
 int NOTE_DELETE ;
 int NOTE_RENAME ;
 scalar_t__ STDIN_FILENO ;
 int USE_KQUEUE ;
 int USE_SLEEP ;
 int action ;
 int * ev ;
 scalar_t__ fileno (int ) ;
 scalar_t__ fstatfs (scalar_t__,struct statfs*) ;
 scalar_t__ kevent (int ,int *,int,int *,int ,struct timespec*) ;
 int kq ;
 int no_files ;

__attribute__((used)) static void
set_events(file_info_t *files)
{
 int i, n = 0;
 file_info_t *file;
 struct timespec ts;
 struct statfs sf;

 ts.tv_sec = 0;
 ts.tv_nsec = 0;

 action = USE_KQUEUE;
 for (i = 0, file = files; i < no_files; i++, file++) {
  if (! file->fp)
   continue;

  if (fstatfs(fileno(file->fp), &sf) == 0 &&
      (sf.f_flags & MNT_LOCAL) == 0) {
   action = USE_SLEEP;
   return;
  }

  if (Fflag && fileno(file->fp) != STDIN_FILENO) {
   EV_SET(&ev[n], fileno(file->fp), EVFILT_VNODE,
       EV_ADD | EV_ENABLE | EV_CLEAR,
       NOTE_DELETE | NOTE_RENAME, 0, 0);
   n++;
  }
  EV_SET(&ev[n], fileno(file->fp), EVFILT_READ,
      EV_ADD | EV_ENABLE | EV_CLEAR, 0, 0, 0);
  n++;
 }

 if (kevent(kq, ev, n, ((void*)0), 0, &ts) < 0) {
  action = USE_SLEEP;
 }
}
