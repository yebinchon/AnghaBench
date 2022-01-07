
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int time_t ;
struct tm {int dummy; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int buf ;


 scalar_t__ Z1_opt ;
 int ac (int ) ;
 int archive_entry_mtime (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 scalar_t__ archive_entry_size (struct archive_entry*) ;
 int archive_read_data_skip (struct archive*) ;
 struct tm* localtime (int *) ;
 int printf (char*,char*,...) ;
 int strftime (char*,int,char*,struct tm*) ;
 int v_opt ;
 scalar_t__* y_str ;
 int zipinfo_mode ;

__attribute__((used)) static void
list(struct archive *a, struct archive_entry *e)
{
 char buf[20];
 time_t mtime;
 struct tm *tm;

 mtime = archive_entry_mtime(e);
 tm = localtime(&mtime);
 if (*y_str)
  strftime(buf, sizeof(buf), "%m-%d-%G %R", tm);
 else
  strftime(buf, sizeof(buf), "%m-%d-%g %R", tm);

 if (!zipinfo_mode) {
  if (v_opt == 1) {
   printf(" %8ju  %s   %s\n",
       (uintmax_t)archive_entry_size(e),
       buf, archive_entry_pathname(e));
  } else if (v_opt == 2) {
   printf("%8ju  Stored  %7ju   0%%  %s  %08x  %s\n",
       (uintmax_t)archive_entry_size(e),
       (uintmax_t)archive_entry_size(e),
       buf,
       0U,
       archive_entry_pathname(e));
  }
 } else {
  if (Z1_opt)
   printf("%s\n",archive_entry_pathname(e));
 }
 ac(archive_read_data_skip(a));
}
