
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int error (char*,void*) ;
 int kd ;
 int kvm_read (int ,int ,void*,int) ;
 scalar_t__ verbose ;

int
kvm_ckread(void *a, void *b, int l)
{
 if (kvm_read(kd, (u_long)a, b, l) != l) {
  if (verbose)
   error("error reading kmem at %p", a);
  return (0);
 }
 else
  return (1);
}
