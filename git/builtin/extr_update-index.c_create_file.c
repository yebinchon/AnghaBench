
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int _ (char*) ;
 int die_errno (int ,char const*) ;
 char* get_mtime_path (char const*) ;
 int open (char const*,int,int) ;

__attribute__((used)) static int create_file(const char *path)
{
 int fd;
 path = get_mtime_path(path);
 fd = open(path, O_CREAT | O_RDWR, 0644);
 if (fd < 0)
  die_errno(_("failed to create file %s"), path);
 return fd;
}
