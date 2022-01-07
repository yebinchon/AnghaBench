
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ S_ISDIR (int ) ;
 int ac (int ) ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_error_string (struct archive*) ;
 scalar_t__ archive_read_data (struct archive*,int ,int) ;
 int archive_read_data_skip (struct archive*) ;
 int buffer ;
 int info (char*,...) ;

__attribute__((used)) static int
test(struct archive *a, struct archive_entry *e)
{
 ssize_t len;
 int error_count;

 error_count = 0;
 if (S_ISDIR(archive_entry_filetype(e)))
  return 0;

 info("    testing: %s\t", archive_entry_pathname(e));
 while ((len = archive_read_data(a, buffer, sizeof buffer)) > 0)
               ;
 if (len < 0) {
  info(" %s\n", archive_error_string(a));
  ++error_count;
 } else {
  info(" OK\n");
 }


 ac(archive_read_data_skip(a));

 return error_count;
}
