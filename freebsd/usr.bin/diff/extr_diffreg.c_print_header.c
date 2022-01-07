
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tm {int dummy; } ;
struct TYPE_5__ {int tv_nsec; } ;
struct TYPE_8__ {int st_mtime; TYPE_1__ st_mtim; } ;
struct TYPE_6__ {int tv_nsec; } ;
struct TYPE_7__ {int st_mtime; TYPE_2__ st_mtim; } ;


 scalar_t__ D_CONTEXT ;
 scalar_t__ cflag ;
 scalar_t__ diff_format ;
 int diff_output (char*,char*,char const*,...) ;
 int ** label ;
 struct tm* localtime_r (int *,struct tm*) ;
 int sprintf (char*,char*,char*,int,char*) ;
 TYPE_4__ stb1 ;
 TYPE_3__ stb2 ;
 int strftime (char*,int,char const*,struct tm*) ;

__attribute__((used)) static void
print_header(const char *file1, const char *file2)
{
 const char *time_format;
 char buf1[256];
 char buf2[256];
 char end1[10];
 char end2[10];
 struct tm tm1, tm2, *tm_ptr1, *tm_ptr2;
 int nsec1 = stb1.st_mtim.tv_nsec;
 int nsec2 = stb2.st_mtim.tv_nsec;

 time_format = "%Y-%m-%d %H:%M:%S";

 if (cflag)
  time_format = "%c";
 tm_ptr1 = localtime_r(&stb1.st_mtime, &tm1);
 tm_ptr2 = localtime_r(&stb2.st_mtime, &tm2);
 strftime(buf1, 256, time_format, tm_ptr1);
 strftime(buf2, 256, time_format, tm_ptr2);
 if (!cflag) {
  strftime(end1, 10, "%z", tm_ptr1);
  strftime(end2, 10, "%z", tm_ptr2);
  sprintf(buf1, "%s.%.9d %s", buf1, nsec1, end1);
  sprintf(buf2, "%s.%.9d %s", buf2, nsec2, end2);
 }
 if (label[0] != ((void*)0))
  diff_output("%s %s\n", diff_format == D_CONTEXT ? "***" : "---",
      label[0]);
 else
  diff_output("%s %s\t%s\n", diff_format == D_CONTEXT ? "***" : "---",
      file1, buf1);
 if (label[1] != ((void*)0))
  diff_output("%s %s\n", diff_format == D_CONTEXT ? "---" : "+++",
      label[1]);
 else
  diff_output("%s %s\t%s\n", diff_format == D_CONTEXT ? "---" : "+++",
      file2, buf2);
}
