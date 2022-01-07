
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct obj {int oid; } ;


 int EINVAL ;
 int O_RDWR ;
 int PATH_MAX ;
 struct obj* bd_tag_new (int *,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int close (int) ;
 int errno ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

int
bd_tag_create(const char *dev, u_long align, u_long bndry, u_long maxaddr,
    u_long maxsz, u_int nsegs, u_long maxsegsz, u_int datarate, u_int flags)
{
 char path[PATH_MAX];
 struct obj *tag;
 int fd, len;

 len = snprintf(path, PATH_MAX, "/dev/proto/%s/busdma", dev);
 if (len >= PATH_MAX) {
  errno = EINVAL;
  return (-1);
 }
 fd = open(path, O_RDWR);
 if (fd == -1)
  return (-1);

 tag = bd_tag_new(((void*)0), fd, align, bndry, maxaddr, maxsz, nsegs,
     maxsegsz, datarate, flags);
 if (tag == ((void*)0)) {
  close(fd);
  return (-1);
 }
 return (tag->oid);
}
