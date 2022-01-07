
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allow_remove ;
 int error (char*,char const*) ;
 scalar_t__ remove_file_from_cache (char const*) ;

__attribute__((used)) static int remove_one_path(const char *path)
{
 if (!allow_remove)
  return error("%s: does not exist and --remove not passed", path);
 if (remove_file_from_cache(path))
  return error("%s: cannot remove from the index", path);
 return 0;
}
