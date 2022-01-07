
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int O_RDWR ;
 int close (int) ;
 int ftruncate (int,int ) ;
 int shm_open (char const*,int ,int ) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
truncate_one_shm(const char *path, uint64_t newsize)
{
 int error, fd, ret;

 ret = 0;
 fd = shm_open(path, O_RDWR, 0);
 if (fd == -1) {
  warn("open %s", path);
  return (1);
 }
 error = ftruncate(fd, newsize);
 if (error == -1) {
  warn("truncate %s", path);
  ret = 1;
 }
 close(fd);
 return (ret);
}
