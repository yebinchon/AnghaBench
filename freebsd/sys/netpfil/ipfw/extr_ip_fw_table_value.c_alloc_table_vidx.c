
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int (* func ) (int ,TYPE_2__*) ;} ;
struct tableop_state {scalar_t__ vshared; TYPE_1__* ta; TYPE_2__ opstate; int tc; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {int vlimit; } ;


 int ENOSPC ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int ipfw_objhash_alloc_idx (struct namedobj_instance*,int*) ;
 int resize_shared_value_storage (struct ip_fw_chain*) ;
 int stub1 (int ,TYPE_2__*) ;

__attribute__((used)) static int
alloc_table_vidx(struct ip_fw_chain *ch, struct tableop_state *ts,
    struct namedobj_instance *vi, uint16_t *pvidx)
{
 int error, vlimit;
 uint16_t vidx;

 IPFW_UH_WLOCK_ASSERT(ch);

 error = ipfw_objhash_alloc_idx(vi, &vidx);
 if (error != 0) {






  ts->opstate.func(ts->tc, &ts->opstate);
  error = resize_shared_value_storage(ch);
  return (error);
 }

 vlimit = ts->ta->vlimit;
 if (vlimit != 0 && vidx >= vlimit) {
  if (ts->vshared != 0) {

   return (ENOSPC);
  }


  return (ENOSPC);
 }

 *pvidx = vidx;
 return (0);
}
