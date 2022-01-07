
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
typedef int path ;
typedef int line ;
typedef int errormsg ;
typedef int FILE ;


 int ARCHIVE_OK ;
 scalar_t__ EINVAL ;
 int PATH_MAX ;
 int TRUE ;
 int * archive ;
 char* archive_error_string (int *) ;
 int archive_read_free (int *) ;
 int * archive_read_new () ;
 int archive_read_next_header (int *,struct archive_entry**) ;
 int archive_read_open_filename (int *,char*,int) ;
 int archive_read_support_filter_all (int *) ;
 int archive_read_support_format_all (int *) ;
 int dialog_msgbox (char*,char*,int ,int ,int ) ;
 char* distdir ;
 scalar_t__ errno ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int rewind (int *) ;
 int snprintf (char*,int,char*,char const*,...) ;
 size_t strcspn (char*,char*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int
count_files(const char *file)
{
 static FILE *manifest = ((void*)0);
 char *p;
 int file_count;
 int retval;
 size_t span;
 struct archive_entry *entry;
 char line[512];
 char path[PATH_MAX];
 char errormsg[PATH_MAX + 512];

 if (manifest == ((void*)0)) {
  snprintf(path, sizeof(path), "%s/MANIFEST", distdir);
  manifest = fopen(path, "r");
 }

 if (manifest != ((void*)0)) {
  rewind(manifest);
  while (fgets(line, sizeof(line), manifest) != ((void*)0)) {
   p = &line[0];
   span = strcspn(p, "\t") ;
   if (span < 1 || strncmp(p, file, span) != 0)
    continue;





   span = strcspn(p += span + (*p != '\0' ? 1 : 0), "\t");
   span = strcspn(p += span + (*p != '\0' ? 1 : 0), "\t");
   if (span > 0) {
    file_count = (int)strtol(p, (char **)((void*)0), 10);
    if (file_count == 0 && errno == EINVAL)
     continue;
    return (file_count);
   }
  }
 }





 if ((archive = archive_read_new()) == ((void*)0)) {
  snprintf(errormsg, sizeof(errormsg),
      "Error: %s\n", archive_error_string(((void*)0)));
  dialog_msgbox("Extract Error", errormsg, 0, 0, TRUE);
  return (-1);
 }
 archive_read_support_format_all(archive);
 archive_read_support_filter_all(archive);
 snprintf(path, sizeof(path), "%s/%s", distdir, file);
 retval = archive_read_open_filename(archive, path, 4096);
 if (retval != ARCHIVE_OK) {
  snprintf(errormsg, sizeof(errormsg),
      "Error while extracting %s: %s\n", file,
      archive_error_string(archive));
  dialog_msgbox("Extract Error", errormsg, 0, 0, TRUE);
  archive = ((void*)0);
  return (-1);
 }

 file_count = 0;
 while (archive_read_next_header(archive, &entry) == ARCHIVE_OK)
  file_count++;
 archive_read_free(archive);
 archive = ((void*)0);

 return (file_count);
}
