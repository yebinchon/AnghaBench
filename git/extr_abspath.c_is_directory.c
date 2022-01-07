
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 int stat (char const*,struct stat*) ;

int is_directory(const char *path)
{
 struct stat st;
 return (!stat(path, &st) && S_ISDIR(st.st_mode));
}
