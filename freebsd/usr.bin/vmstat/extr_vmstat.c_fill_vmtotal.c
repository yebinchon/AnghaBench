
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmtotal {int dummy; } ;


 int * kd ;
 int mysysctl (char*,struct vmtotal*,size_t*) ;
 int xo_errx (int,char*) ;

__attribute__((used)) static void
fill_vmtotal(struct vmtotal *vmtp)
{
 size_t size;

 if (kd != ((void*)0)) {

  xo_errx(1, "not implemented");
 } else {
  size = sizeof(*vmtp);
  mysysctl("vm.vmtotal", vmtp, &size);
  if (size != sizeof(*vmtp))
   xo_errx(1, "vm.total size mismatch");
 }
}
