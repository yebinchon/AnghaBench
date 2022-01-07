
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static inline char *git_find_last_dir_sep(const char *path)
{
 return strrchr(path, '/');
}
