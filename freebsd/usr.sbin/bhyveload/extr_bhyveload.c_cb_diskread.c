
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t ssize_t ;


 int EIO ;
 int * disk_fd ;
 int errno ;
 int ndisks ;
 size_t pread (int ,void*,size_t,int ) ;

__attribute__((used)) static int
cb_diskread(void *arg, int unit, uint64_t from, void *to, size_t size,
     size_t *resid)
{
 ssize_t n;

 if (unit < 0 || unit >= ndisks )
  return (EIO);
 n = pread(disk_fd[unit], to, size, from);
 if (n < 0)
  return (errno);
 *resid = size - n;
 return (0);
}
