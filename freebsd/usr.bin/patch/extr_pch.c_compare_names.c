
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_name {char* path; int exists; } ;


 int INDEX_FILE ;
 int OLD_FILE ;
 size_t SIZE_MAX ;
 char* basename (char*) ;
 size_t num_components (char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *
compare_names(const struct file_name *names, bool assume_exists)
{
 size_t min_components, min_baselen, min_len, tmp;
 char *best = ((void*)0);
 char *path;
 int i;
 min_components = min_baselen = min_len = SIZE_MAX;
 for (i = INDEX_FILE; i >= OLD_FILE; i--) {
  path = names[i].path;
  if (path == ((void*)0) || (!names[i].exists && !assume_exists))
   continue;
  if ((tmp = num_components(path)) > min_components)
   continue;
  if (tmp < min_components) {
   min_components = tmp;
   best = path;
  }
  if ((tmp = strlen(basename(path))) > min_baselen)
   continue;
  if (tmp < min_baselen) {
   min_baselen = tmp;
   best = path;
  }
  if ((tmp = strlen(path)) > min_len)
   continue;
  min_len = tmp;
  best = path;
 }
 return best;
}
