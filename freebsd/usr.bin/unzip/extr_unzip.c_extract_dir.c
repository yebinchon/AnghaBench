
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ac (int ) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_read_data_skip (struct archive*) ;
 int info (char*,char const*) ;
 int make_dir (char const*,int) ;

__attribute__((used)) static void
extract_dir(struct archive *a, struct archive_entry *e, const char *path)
{
 int mode;

 mode = archive_entry_mode(e) & 0777;
 if (mode == 0)
  mode = 0755;
 mode |= 0700;
 if (mode & 0040)
  mode |= 0010;
 if (mode & 0004)
  mode |= 0001;

 info("   creating: %s/\n", path);
 make_dir(path, mode);
 ac(archive_read_data_skip(a));
}
