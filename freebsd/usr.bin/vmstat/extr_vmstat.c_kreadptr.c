
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kd ;
 int kvm_geterr (int ) ;
 scalar_t__ kvm_read (int ,uintptr_t,void*,size_t) ;
 int xo_errx (int,char*,int ) ;

__attribute__((used)) static void
kreadptr(uintptr_t addr, void *buf, size_t size)
{

 if ((size_t)kvm_read(kd, addr, buf, size) != size)
  xo_errx(1, "%s", kvm_geterr(kd));
}
