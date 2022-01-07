
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int FALSE ;
 int S_IFDIR ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int
is_dir(const char *file)
{
 struct stat sbuf;

 if (stat(file, &sbuf) < 0)
  return (FALSE);

 return (sbuf.st_mode & S_IFDIR);
}
