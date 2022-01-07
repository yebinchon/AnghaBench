
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_dir_sep (char const) ;
 int strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int is_local_named_pipe_path(const char *filename)
{
 return (is_dir_sep(filename[0]) &&
  is_dir_sep(filename[1]) &&
  filename[2] == '.' &&
  is_dir_sep(filename[3]) &&
  !strncasecmp(filename+4, "pipe", 4) &&
  is_dir_sep(filename[8]) &&
  filename[9]);
}
