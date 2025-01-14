
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int kvm_t ;


 int kvm_geterr (int *) ;
 int kvm_read (int *,int ,char*,int) ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
kread(kvm_t *kd, u_long addr, char *buffer, int size)
{
 if (kd == ((void*)0) || buffer == ((void*)0))
  return (-1);

 if (kvm_read(kd, addr, buffer, size) != size) {
  warnx("kvm_read: %s", kvm_geterr(kd));
  return (-1);
 }

 return (0);
}
