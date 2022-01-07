
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_queue {int ni; } ;
struct TYPE_2__ {int id; int type; } ;
struct dn_flow {int fid; TYPE_1__ oid; } ;
struct copy_args {int end; scalar_t__* start; } ;


 int DNHT_SCAN_END ;
 int DN_FLOW ;
 scalar_t__ copy_obj_q (scalar_t__*,int ,int *,char*,int) ;
 int si_hash (uintptr_t,int ,int *) ;

__attribute__((used)) static int
copy_q_cb(void *obj, void *arg)
{
 struct dn_queue *q = obj;
 struct copy_args *a = arg;
 struct dn_flow *ni = (struct dn_flow *)(*a->start);
        if (copy_obj_q(a->start, a->end, &q->ni, "queue", -1))
                return DNHT_SCAN_END;
        ni->oid.type = DN_FLOW;
        ni->oid.id = si_hash((uintptr_t)&ni->fid, 0, ((void*)0));
        return 0;
}
