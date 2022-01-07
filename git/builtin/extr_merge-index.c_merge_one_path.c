
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_name_pos (char const*,int ) ;
 int merge_entry (int,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void merge_one_path(const char *path)
{
 int pos = cache_name_pos(path, strlen(path));





 if (pos < 0)
  merge_entry(-pos-1, path);
}
