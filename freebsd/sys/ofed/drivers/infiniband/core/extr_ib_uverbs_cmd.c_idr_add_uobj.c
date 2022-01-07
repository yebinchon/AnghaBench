
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
struct ib_uobject {int id; } ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int ib_uverbs_idr_lock ;
 int idr_alloc (struct idr*,struct ib_uobject*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int idr_add_uobj(struct idr *idr, struct ib_uobject *uobj)
{
 int ret;

 idr_preload(GFP_KERNEL);
 spin_lock(&ib_uverbs_idr_lock);

 ret = idr_alloc(idr, uobj, 0, 0, GFP_NOWAIT);
 if (ret >= 0)
  uobj->id = ret;

 spin_unlock(&ib_uverbs_idr_lock);
 idr_preload_end();

 return ret < 0 ? ret : 0;
}
