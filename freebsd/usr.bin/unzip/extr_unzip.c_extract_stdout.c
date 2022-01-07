
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int mode_t ;


 int STDOUT_FILENO ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 int ac (int ) ;
 int accept_pathname (char*) ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_read_data_skip (struct archive*) ;
 scalar_t__ c_opt ;
 int extract2fd (struct archive*,char*,int ) ;
 int free (char*) ;
 int info (char*,char*) ;
 char* pathdup (int ) ;
 int warningx (char*,char*) ;

__attribute__((used)) static void
extract_stdout(struct archive *a, struct archive_entry *e)
{
 char *pathname;
 mode_t filetype;

 pathname = pathdup(archive_entry_pathname(e));
 filetype = archive_entry_filetype(e);


 if (!S_ISDIR(filetype) && !S_ISREG(filetype) && !S_ISLNK(filetype)) {
  warningx("skipping non-regular entry '%s'", pathname);
  ac(archive_read_data_skip(a));
  free(pathname);
  return;
 }


 if (S_ISDIR(filetype)) {
  ac(archive_read_data_skip(a));
  free(pathname);
  return;
 }


 if (!accept_pathname(pathname)) {
  ac(archive_read_data_skip(a));
  free(pathname);
  return;
 }

 if (c_opt)
  info("x %s\n", pathname);

 (void)extract2fd(a, pathname, STDOUT_FILENO);

 free(pathname);
}
