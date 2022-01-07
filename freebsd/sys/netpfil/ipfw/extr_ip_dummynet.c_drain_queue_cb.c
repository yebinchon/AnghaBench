
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
struct dn_queue {TYPE_1__ ni; } ;


 int DNHT_SCAN_DEL ;
 int DN_DESTROY ;
 int dn_delete_queue (struct dn_queue*,int ) ;

__attribute__((used)) static int
drain_queue_cb(void *_q, void *arg)
{
 struct dn_queue *q = _q;

 if (q->ni.length == 0) {
  dn_delete_queue(q, DN_DESTROY);
  return DNHT_SCAN_DEL;
 }

 return 0;
}
