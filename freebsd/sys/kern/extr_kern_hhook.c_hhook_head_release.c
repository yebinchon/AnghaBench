
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hhook_head {int hhh_refcount; } ;


 int refcount_release (int *) ;

void
hhook_head_release(struct hhook_head *hhh)
{

 refcount_release(&hhh->hhh_refcount);
}
