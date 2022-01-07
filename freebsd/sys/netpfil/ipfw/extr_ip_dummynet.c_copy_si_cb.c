
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dn_sch_inst {TYPE_2__* sched; int ni; } ;
struct TYPE_6__ {int id; int type; } ;
struct dn_flow {TYPE_3__ oid; } ;
struct copy_args {int end; scalar_t__* start; } ;
struct TYPE_4__ {int sched_nr; } ;
struct TYPE_5__ {TYPE_1__ sch; } ;


 int DNHT_KEY_IS_OBJ ;
 int DNHT_SCAN_END ;
 int DN_FLOW ;
 scalar_t__ copy_obj (scalar_t__*,int ,int *,char*,int ) ;
 int si_hash (uintptr_t,int ,int *) ;

__attribute__((used)) static int
copy_si_cb(void *obj, void *arg)
{
 struct dn_sch_inst *si = obj;
 struct copy_args *a = arg;
 struct dn_flow *ni = (struct dn_flow *)(*a->start);
 if (copy_obj(a->start, a->end, &si->ni, "inst",
   si->sched->sch.sched_nr))
  return DNHT_SCAN_END;
 ni->oid.type = DN_FLOW;
 ni->oid.id = si_hash((uintptr_t)si, DNHT_KEY_IS_OBJ, ((void*)0));
 return 0;
}
