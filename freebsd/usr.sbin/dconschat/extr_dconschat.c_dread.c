
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_state {int type; int kd; int fd; } ;
typedef int off_t ;




 int kvm_read (int ,int ,void*,size_t) ;
 int pread (int ,void*,size_t,int ) ;

__attribute__((used)) static int
dread(struct dcons_state *dc, void *buf, size_t n, off_t offset)
{
 switch (dc->type) {
 case 129:
  return (pread(dc->fd, buf, n, offset));
 case 128:
  return (kvm_read(dc->kd, offset, buf, n));
 }
 return (-1);
}
