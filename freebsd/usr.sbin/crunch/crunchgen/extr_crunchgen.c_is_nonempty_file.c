
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;


 scalar_t__ S_ISREG (int ) ;
 int stat (char const*,struct stat*) ;

int
is_nonempty_file(const char *pathname)
{
 struct stat buf;

 if (stat(pathname, &buf) == -1)
  return 0;

 return S_ISREG(buf.st_mode) && buf.st_size > 0;
}
