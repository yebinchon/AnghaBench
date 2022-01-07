
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int fd; int rid; scalar_t__ ofs; int size; int ptr; int addr; } ;
struct proto_ioc_region {int size; int address; } ;


 int EINVAL ;
 int MAP_NOCORE ;
 int MAP_SHARED ;
 int O_RDWR ;
 int PATH_MAX ;
 int PROTO_IOC_REGION ;
 int PROT_READ ;
 int PROT_WRITE ;
 int close (int) ;
 int errno ;
 int ioctl (int,int ,struct proto_ioc_region*) ;
 int mmap (int *,int ,int,int,int,scalar_t__) ;
 int open (char*,int ) ;
 int rid_alloc () ;
 struct resource* rid_lookup (int) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

int
bs_map(const char *dev, const char *res)
{
 char path[PATH_MAX];
 struct proto_ioc_region region;
 struct resource *r;
 int len, rid;

 len = snprintf(path, PATH_MAX, "/dev/proto/%s/%s", dev, res);
 if (len >= PATH_MAX) {
  errno = EINVAL;
  return (-1);
 }
 rid = rid_alloc();
 if (rid == -1)
  return (-1);
 r = rid_lookup(rid);
 if (r == ((void*)0))
  return (-1);
 r->fd = open(path, O_RDWR);
 if (r->fd == -1)
  return (-1);
 r->rid = -1;
 if (ioctl(r->fd, PROTO_IOC_REGION, &region) == -1) {
  close(r->fd);
  r->fd = -1;
  return (-1);
 }
 r->addr = region.address;
 r->size = region.size;
 r->ofs = 0;
 r->ptr = mmap(((void*)0), r->size, PROT_READ | PROT_WRITE,
     MAP_NOCORE | MAP_SHARED, r->fd, r->ofs);
 return (rid);
}
