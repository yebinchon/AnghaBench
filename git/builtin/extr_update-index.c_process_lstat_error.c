
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char const*,char*) ;
 scalar_t__ is_missing_file_error (int) ;
 int remove_one_path (char const*) ;
 char* strerror (int) ;

__attribute__((used)) static int process_lstat_error(const char *path, int err)
{
 if (is_missing_file_error(err))
  return remove_one_path(path);
 return error("lstat(\"%s\"): %s", path, strerror(err));
}
