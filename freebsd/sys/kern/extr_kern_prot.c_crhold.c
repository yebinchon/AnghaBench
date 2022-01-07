
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_ref; } ;


 int refcount_acquire (int *) ;

struct ucred *
crhold(struct ucred *cr)
{

 refcount_acquire(&cr->cr_ref);
 return (cr);
}
