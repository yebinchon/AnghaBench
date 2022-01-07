
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int stat (char const*,struct stat*) ;

__attribute__((used)) static int dir_exists(const char *path)
{
 struct stat sb;
 return !stat(path, &sb);
}
