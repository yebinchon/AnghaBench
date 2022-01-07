
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;


 scalar_t__ kflag ;
 scalar_t__ stat (char const*,struct stat*) ;
 int unlink (char const*) ;

__attribute__((used)) static void
unlink_input(const char *file, const struct stat *sb)
{
 struct stat nsb;

 if (kflag)
  return;
 if (stat(file, &nsb) != 0)

  return;
 if (nsb.st_dev != sb->st_dev || nsb.st_ino != sb->st_ino)

  return;
 unlink(file);
}
