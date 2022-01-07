
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int mode_t ;


 scalar_t__ S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int S_ISREG (int ) ;
 int ac (int ) ;
 int accept_pathname (char*) ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_read_data_skip (struct archive*) ;
 int d_arg ;
 int extract_dir (struct archive*,struct archive_entry*,char*) ;
 int extract_file (struct archive*,struct archive_entry*,char**) ;
 int free (char*) ;
 scalar_t__ j_opt ;
 int make_parent (char*) ;
 char* pathcat (int ,char*) ;
 char* pathdup (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int * strstr (char*,char*) ;
 int warningx (char*,char*) ;

__attribute__((used)) static void
extract(struct archive *a, struct archive_entry *e)
{
 char *pathname, *realpathname;
 mode_t filetype;
 char *p, *q;

 pathname = pathdup(archive_entry_pathname(e));
 filetype = archive_entry_filetype(e);


 if (pathname[0] == '/' ||
     strncmp(pathname, "../", 3) == 0 ||
     strstr(pathname, "/../") != ((void*)0)) {
  warningx("skipping insecure entry '%s'", pathname);
  ac(archive_read_data_skip(a));
  free(pathname);
  return;
 }


 if (!S_ISDIR(filetype) && !S_ISREG(filetype) && !S_ISLNK(filetype)) {
  warningx("skipping non-regular entry '%s'", pathname);
  ac(archive_read_data_skip(a));
  free(pathname);
  return;
 }


 if (S_ISDIR(filetype) && j_opt) {
  ac(archive_read_data_skip(a));
  free(pathname);
  return;
 }


 if (!accept_pathname(pathname)) {
  ac(archive_read_data_skip(a));
  free(pathname);
  return;
 }


 if (j_opt) {
  for (p = q = pathname; *p; ++p)
   if (*p == '/')
    q = p + 1;
  realpathname = pathcat(d_arg, q);
 } else {
  realpathname = pathcat(d_arg, pathname);
 }


 make_parent(realpathname);

 if (S_ISDIR(filetype))
  extract_dir(a, e, realpathname);
 else
  extract_file(a, e, &realpathname);

 free(realpathname);
 free(pathname);
}
