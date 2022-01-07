
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rmdir (char const*) ;
 int show_only ;

__attribute__((used)) static int prune_subdir(unsigned int nr, const char *path, void *data)
{
 if (!show_only)
  rmdir(path);
 return 0;
}
