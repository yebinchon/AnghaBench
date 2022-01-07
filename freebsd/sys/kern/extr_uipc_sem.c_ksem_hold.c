
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksem {int ks_ref; } ;


 int refcount_acquire (int *) ;

__attribute__((used)) static struct ksem *
ksem_hold(struct ksem *ks)
{

 refcount_acquire(&ks->ks_ref);
 return (ks);
}
