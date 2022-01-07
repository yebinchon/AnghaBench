
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int die_errno (char*,char const*) ;
 int hash_fd (int,char const*,char const*,unsigned int,int) ;
 int open (char const*,int ) ;

__attribute__((used)) static void hash_object(const char *path, const char *type, const char *vpath,
   unsigned flags, int literally)
{
 int fd;
 fd = open(path, O_RDONLY);
 if (fd < 0)
  die_errno("Cannot open '%s'", path);
 hash_fd(fd, type, vpath, flags, literally);
}
