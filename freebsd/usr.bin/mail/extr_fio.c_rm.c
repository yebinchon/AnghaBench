
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int EISDIR ;
 int S_ISREG (int ) ;
 int errno ;
 scalar_t__ stat (char*,struct stat*) ;
 int unlink (char*) ;

int
rm(char *name)
{
 struct stat sb;

 if (stat(name, &sb) < 0)
  return (-1);
 if (!S_ISREG(sb.st_mode)) {
  errno = EISDIR;
  return (-1);
 }
 return (unlink(name));
}
