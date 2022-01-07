
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat_data {int dummy; } ;
struct stat {int dummy; } ;
struct TYPE_4__ {int buf; } ;


 char* _ (char*) ;
 int atexit (int ) ;
 int avoid_racy () ;
 int close (int) ;
 int create_file (char*) ;
 int die_errno (char*,...) ;
 int fill_stat_data (struct stat_data*,struct stat*) ;
 int fprintf (int ,char*,char*) ;
 int fprintf_ln (int ,char*) ;
 int fputc (char,int ) ;
 int free (char*) ;
 scalar_t__ match_stat_data (struct stat_data*,struct stat*) ;
 int mkdtemp (int ) ;
 TYPE_1__ mtime_dir ;
 int remove_test_directory ;
 scalar_t__ rmdir (int ) ;
 int stderr ;
 int strbuf_addstr (TYPE_1__*,char*) ;
 int strbuf_release (TYPE_1__*) ;
 int write_or_die (int,char*,int) ;
 char* xgetcwd () ;
 int xmkdir (char*) ;
 int xrmdir (char*) ;
 int xstat_mtime_dir (struct stat*) ;
 int xunlink (char*) ;

__attribute__((used)) static int test_if_untracked_cache_is_supported(void)
{
 struct stat st;
 struct stat_data base;
 int fd, ret = 0;
 char *cwd;

 strbuf_addstr(&mtime_dir, "mtime-test-XXXXXX");
 if (!mkdtemp(mtime_dir.buf))
  die_errno("Could not make temporary directory");

 cwd = xgetcwd();
 fprintf(stderr, _("Testing mtime in '%s' "), cwd);
 free(cwd);

 atexit(remove_test_directory);
 xstat_mtime_dir(&st);
 fill_stat_data(&base, &st);
 fputc('.', stderr);

 avoid_racy();
 fd = create_file("newfile");
 xstat_mtime_dir(&st);
 if (!match_stat_data(&base, &st)) {
  close(fd);
  fputc('\n', stderr);
  fprintf_ln(stderr,_("directory stat info does not "
        "change after adding a new file"));
  goto done;
 }
 fill_stat_data(&base, &st);
 fputc('.', stderr);

 avoid_racy();
 xmkdir("new-dir");
 xstat_mtime_dir(&st);
 if (!match_stat_data(&base, &st)) {
  close(fd);
  fputc('\n', stderr);
  fprintf_ln(stderr, _("directory stat info does not change "
         "after adding a new directory"));
  goto done;
 }
 fill_stat_data(&base, &st);
 fputc('.', stderr);

 avoid_racy();
 write_or_die(fd, "data", 4);
 close(fd);
 xstat_mtime_dir(&st);
 if (match_stat_data(&base, &st)) {
  fputc('\n', stderr);
  fprintf_ln(stderr, _("directory stat info changes "
         "after updating a file"));
  goto done;
 }
 fputc('.', stderr);

 avoid_racy();
 close(create_file("new-dir/new"));
 xstat_mtime_dir(&st);
 if (match_stat_data(&base, &st)) {
  fputc('\n', stderr);
  fprintf_ln(stderr, _("directory stat info changes after "
         "adding a file inside subdirectory"));
  goto done;
 }
 fputc('.', stderr);

 avoid_racy();
 xunlink("newfile");
 xstat_mtime_dir(&st);
 if (!match_stat_data(&base, &st)) {
  fputc('\n', stderr);
  fprintf_ln(stderr, _("directory stat info does not "
         "change after deleting a file"));
  goto done;
 }
 fill_stat_data(&base, &st);
 fputc('.', stderr);

 avoid_racy();
 xunlink("new-dir/new");
 xrmdir("new-dir");
 xstat_mtime_dir(&st);
 if (!match_stat_data(&base, &st)) {
  fputc('\n', stderr);
  fprintf_ln(stderr, _("directory stat info does not "
         "change after deleting a directory"));
  goto done;
 }

 if (rmdir(mtime_dir.buf))
  die_errno(_("failed to delete directory %s"), mtime_dir.buf);
 fprintf_ln(stderr, _(" OK"));
 ret = 1;

done:
 strbuf_release(&mtime_dir);
 return ret;
}
