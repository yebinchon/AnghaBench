
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char const*,int) ;

__attribute__((used)) static char *
make_version_name(const char *file, int version)
{
 char *backup_name;

 if (asprintf(&backup_name, "%s.~%d~", file, version) == -1)
  return ((void*)0);
 return backup_name;
}
