
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum backup_type { ____Placeholder_backup_type } backup_type ;


 int argmatch (char const*,int ) ;
 int backup_args ;
 int* backup_types ;
 int exit (int) ;
 int invalid_arg (char*,char const*,int) ;
 int numbered_existing ;

enum backup_type
get_version(const char *version)
{
 int i;

 if (version == ((void*)0) || *version == '\0')
  return numbered_existing;
 i = argmatch(version, backup_args);
 if (i >= 0)
  return backup_types[i];
 invalid_arg("version control type", version, i);
 exit(2);
}
