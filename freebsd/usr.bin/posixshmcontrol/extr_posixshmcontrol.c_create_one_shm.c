
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int close (int) ;
 int shm_open (char const*,int,long) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
create_one_shm(const char *path, long mode)
{
 int fd;

 fd = shm_open(path, O_RDWR | O_CREAT, mode);
 if (fd == -1) {
  warn("create %s", path);
  return (1);
 }
 close(fd);
 return (0);
}
