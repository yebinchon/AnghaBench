
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die_errno (int ,char const*) ;
 char* get_mtime_path (char const*) ;
 scalar_t__ mkdir (char const*,int) ;

__attribute__((used)) static void xmkdir(const char *path)
{
 path = get_mtime_path(path);
 if (mkdir(path, 0700))
  die_errno(_("failed to create directory %s"), path);
}
