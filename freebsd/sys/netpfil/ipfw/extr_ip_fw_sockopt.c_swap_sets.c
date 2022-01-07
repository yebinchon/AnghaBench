
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct opcode_obj_rewrite {int (* manage_sets ) (struct ip_fw_chain*,scalar_t__,scalar_t__,int ) ;} ;
struct ip_fw_chain {int n_rules; struct ip_fw** map; } ;
struct ip_fw {scalar_t__ set; } ;
struct TYPE_3__ {scalar_t__ set; scalar_t__ new_set; } ;
typedef TYPE_1__ ipfw_range_tlv ;


 int EEXIST ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int MOVE_ALL ;
 int SWAP_ALL ;
 int TEST_ALL ;
 struct opcode_obj_rewrite* ctl3_rewriters ;
 int ctl3_rsize ;
 int stub1 (struct ip_fw_chain*,scalar_t__,scalar_t__,int ) ;
 int stub2 (struct ip_fw_chain*,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int
swap_sets(struct ip_fw_chain *chain, ipfw_range_tlv *rt, int mv)
{
 struct opcode_obj_rewrite *rw;
 struct ip_fw *rule;
 int i;

 IPFW_UH_WLOCK_ASSERT(chain);

 if (rt->set == rt->new_set)
  return (0);

 if (mv != 0) {




  for (rw = ctl3_rewriters;
      rw < ctl3_rewriters + ctl3_rsize; rw++) {
   if (rw->manage_sets == ((void*)0))
    continue;
   i = rw->manage_sets(chain, (uint8_t)rt->set,
       (uint8_t)rt->new_set, TEST_ALL);
   if (i != 0)
    return (EEXIST);
  }
 }

 for (i = 0; i < chain->n_rules - 1; i++) {
  rule = chain->map[i];
  if (rule->set == (uint8_t)rt->set)
   rule->set = (uint8_t)rt->new_set;
  else if (rule->set == (uint8_t)rt->new_set && mv == 0)
   rule->set = (uint8_t)rt->set;
 }
 for (rw = ctl3_rewriters; rw < ctl3_rewriters + ctl3_rsize; rw++) {
  if (rw->manage_sets == ((void*)0))
   continue;
  rw->manage_sets(chain, (uint8_t)rt->set,
      (uint8_t)rt->new_set, mv != 0 ? MOVE_ALL: SWAP_ALL);
 }
 return (0);
}
