
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct TYPE_5__ {int tempfile; } ;


 char* _ (char*) ;
 int commit_lock_file (TYPE_1__*) ;
 int errno ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int get_lock_file_fd (TYPE_1__*) ;
 char* get_tempfile_path (int ) ;
 int git_path (char*) ;
 TYPE_1__ log_lock ;
 int rollback_lock_file (TYPE_1__*) ;
 int stderr ;
 char* strerror (int) ;
 int unlink (int ) ;

__attribute__((used)) static void process_log_file(void)
{
 struct stat st;
 if (fstat(get_lock_file_fd(&log_lock), &st)) {






  int saved_errno = errno;
  fprintf(stderr, _("Failed to fstat %s: %s"),
   get_tempfile_path(log_lock.tempfile),
   strerror(saved_errno));
  fflush(stderr);
  commit_lock_file(&log_lock);
  errno = saved_errno;
 } else if (st.st_size) {

  commit_lock_file(&log_lock);
 } else {

  unlink(git_path("gc.log"));
  rollback_lock_file(&log_lock);
 }
}
