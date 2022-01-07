
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct disk_devdesc {int d_offset; } ;
typedef int daddr_t ;
struct TYPE_2__ {int sectorsize; int fd; } ;


 TYPE_1__ disk ;
 int pread (int ,char*,size_t,int) ;
 int printf (char*,size_t,long long,long long) ;

__attribute__((used)) static int
disk_strategy(void *devdata, int rw, daddr_t blk, size_t size, char *buf,
    size_t *rsize)
{
 struct disk_devdesc *dev = devdata;
 int ret;

 if (rw != 1 )
  return (-1);
 if (rsize)
  *rsize = 0;
 printf("read %zu bytes from the block %lld [+%lld]\n", size,
     (long long)blk, (long long)dev->d_offset);
 ret = pread(disk.fd, buf, size,
     (blk + dev->d_offset) * disk.sectorsize);
 if (ret != size)
  return (-1);
 return (0);
}
