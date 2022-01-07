
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct combine_diff_path {char const* path; } ;



__attribute__((used)) static const char *path_path(void *obj)
{
 struct combine_diff_path *path = (struct combine_diff_path *)obj;

 return path->path;
}
