
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ ssize_t ;


 int kvm_geterr (int ) ;
 scalar_t__ kvm_read (int ,int ,void*,size_t) ;
 int kvmd ;
 scalar_t__ kvmd_init () ;
 int xo_warnx (char*,int ) ;

int
kread(u_long addr, void *buf, size_t size)
{

 if (kvmd_init() < 0)
  return (-1);

 if (!buf)
  return (0);
 if (kvm_read(kvmd, addr, buf, size) != (ssize_t)size) {
  xo_warnx("%s", kvm_geterr(kvmd));
  return (-1);
 }
 return (0);
}
