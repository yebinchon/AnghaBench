
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct stat {int st_ino; scalar_t__ st_atime; scalar_t__ st_ctime; scalar_t__ st_mtime; scalar_t__ st_birthtime; } ;


 scalar_t__ errno ;
 int stat (char const*,struct stat*) ;
 long long strtoll (char const*,char**,int ) ;

__attribute__((used)) static int
get_tstamp(const char *b, struct stat *st)
{
 time_t when;
 char *eb;
 long long l;

 if (stat(b, st) != -1)
  return 0;

 {
  errno = 0;
  l = strtoll(b, &eb, 0);
  if (b == eb || *eb || errno)
   return -1;
  when = (time_t)l;
 }

 st->st_ino = 1;



 st->st_mtime = st->st_ctime = st->st_atime = when;
 return 0;
}
