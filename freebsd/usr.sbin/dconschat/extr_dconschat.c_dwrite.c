
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_state {int flags; int type; int kd; int fd; } ;
typedef int off_t ;


 int F_RD_ONLY ;


 int kvm_write (int ,int ,void*,size_t) ;
 int pwrite (int ,void*,size_t,int ) ;

__attribute__((used)) static int
dwrite(struct dcons_state *dc, void *buf, size_t n, off_t offset)
{
 if ((dc->flags & F_RD_ONLY) != 0)
  return (n);

 switch (dc->type) {
 case 129:
  return (pwrite(dc->fd, buf, n, offset));
 case 128:
  return (kvm_write(dc->kd, offset, buf, n));
 }
 return (-1);
}
