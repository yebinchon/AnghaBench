
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ backup_type ;
 char const* basename (char*) ;
 char* concat (char const*,char*) ;
 char* dirname (char*) ;
 int free (char*) ;
 char* make_version_name (char const*,int) ;
 int max_backup_version (char*,char*) ;
 scalar_t__ numbered_existing ;
 scalar_t__ simple ;
 char* simple_backup_suffix ;
 char* strdup (char const*) ;

char *
find_backup_file_name(const char *file)
{
 char *dir, *base_versions, *tmp_file;
 int highest_backup;

 if (backup_type == simple)
  return concat(file, simple_backup_suffix);
 tmp_file = strdup(file);
 if (tmp_file == ((void*)0))
  return ((void*)0);
 base_versions = concat(basename(tmp_file), ".~");
 free(tmp_file);
 if (base_versions == ((void*)0))
  return ((void*)0);
 tmp_file = strdup(file);
 if (tmp_file == ((void*)0)) {
  free(base_versions);
  return ((void*)0);
 }
 dir = dirname(tmp_file);
 if (dir == ((void*)0)) {
  free(base_versions);
  free(tmp_file);
  return ((void*)0);
 }
 highest_backup = max_backup_version(base_versions, dir);
 free(base_versions);
 free(tmp_file);
 if (backup_type == numbered_existing && highest_backup == 0)
  return concat(file, simple_backup_suffix);
 return make_version_name(file, highest_backup + 1);
}
