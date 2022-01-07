
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
struct ib_uobject {int id; } ;


 int ib_uverbs_idr_lock ;
 int idr_remove (struct idr*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void idr_remove_uobj(struct idr *idr, struct ib_uobject *uobj)
{
 spin_lock(&ib_uverbs_idr_lock);
 idr_remove(idr, uobj->id);
 spin_unlock(&ib_uverbs_idr_lock);
}
