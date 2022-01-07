
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ipfw_flow_id {int dummy; } ;
struct TYPE_2__ {struct ipfw_flow_id fid; } ;
struct dn_sch_inst {TYPE_1__ ni; } ;


 int DNHT_KEY_IS_OBJ ;
 int flow_id_hash (struct ipfw_flow_id*) ;

__attribute__((used)) static uint32_t
si_hash(uintptr_t key, int flags, void *arg)
{

 struct ipfw_flow_id *id = (flags & DNHT_KEY_IS_OBJ) ?
  &((struct dn_sch_inst *)key)->ni.fid :
  (struct ipfw_flow_id *)key;

 return flow_id_hash(id);
}
