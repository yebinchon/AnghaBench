
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int ks_shortdesc; } ;


 scalar_t__ memguard_cmp (unsigned long) ;
 scalar_t__ strcmp (int ,int ) ;
 int vm_memguard_desc ;
 struct malloc_type* vm_memguard_mtype ;

int
memguard_cmp_mtp(struct malloc_type *mtp, unsigned long size)
{

 if (memguard_cmp(size))
  return(1);






 return (strcmp(mtp->ks_shortdesc, vm_memguard_desc) == 0);
}
