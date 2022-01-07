
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct ip_fw_chain {int dummy; } ;
struct ip_fw {int refcnt; } ;
struct TYPE_2__ {int refcnt; } ;
struct dyn_state_obj {TYPE_1__ no; } ;
struct dyn_data {int dummy; } ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int MPASS (int) ;
 struct dyn_state_obj* SRV_OBJECT (struct ip_fw_chain*,int ) ;
 int dyn_destroy (struct ip_fw_chain*,TYPE_1__*) ;
 int ipfw_free_rule (struct ip_fw*) ;

__attribute__((used)) static void
dyn_release_rule(struct ip_fw_chain *ch, struct dyn_data *data,
    struct ip_fw *rule, uint16_t kidx)
{
 struct dyn_state_obj *obj;

 IPFW_UH_WLOCK_ASSERT(ch);
 MPASS(kidx != 0);

 obj = SRV_OBJECT(ch, kidx);
 if (obj->no.refcnt == 1)
  dyn_destroy(ch, &obj->no);
 else
  obj->no.refcnt--;

 if (--rule->refcnt == 1)
  ipfw_free_rule(rule);
}
