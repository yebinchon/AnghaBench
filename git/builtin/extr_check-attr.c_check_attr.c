
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_check {int dummy; } ;


 int free (char*) ;
 int git_all_attrs (int *,char*,struct attr_check*) ;
 int git_check_attr (int *,char*,struct attr_check*) ;
 int output_attr (struct attr_check*,char const*) ;
 char* prefix_path (char const*,int ,char const*) ;
 int strlen (char const*) ;
 int the_index ;

__attribute__((used)) static void check_attr(const char *prefix,
         struct attr_check *check,
         int collect_all,
         const char *file)
{
 char *full_path =
  prefix_path(prefix, prefix ? strlen(prefix) : 0, file);

 if (collect_all) {
  git_all_attrs(&the_index, full_path, check);
 } else {
  git_check_attr(&the_index, full_path, check);
 }
 output_attr(check, file);

 free(full_path);
}
