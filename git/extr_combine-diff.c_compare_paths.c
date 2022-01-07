
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filespec {int mode; int path; } ;
struct combine_diff_path {int mode; int path; } ;


 int S_ISDIR (int ) ;
 int base_name_compare (int ,int ,int ,int ,int ,int ) ;
 int strcmp (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int compare_paths(const struct combine_diff_path *one,
     const struct diff_filespec *two)
{
 if (!S_ISDIR(one->mode) && !S_ISDIR(two->mode))
  return strcmp(one->path, two->path);

 return base_name_compare(one->path, strlen(one->path), one->mode,
     two->path, strlen(two->path), two->mode);
}
