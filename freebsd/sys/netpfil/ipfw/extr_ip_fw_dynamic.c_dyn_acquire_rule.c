
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct ip_fw_chain {int dummy; } ;
struct ip_fw {int refcnt; } ;
struct TYPE_2__ {scalar_t__ etlv; int refcnt; } ;
struct dyn_state_obj {TYPE_1__ no; } ;
struct dyn_data {int flags; } ;


 int DYN_REFERENCED ;
 scalar_t__ IPFW_TLV_STATE_NAME ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int MPASS (int) ;
 struct dyn_state_obj* SRV_OBJECT (struct ip_fw_chain*,int ) ;

__attribute__((used)) static void
dyn_acquire_rule(struct ip_fw_chain *ch, struct dyn_data *data,
    struct ip_fw *rule, uint16_t kidx)
{
 struct dyn_state_obj *obj;






 if (data->flags & DYN_REFERENCED)
  return;

 IPFW_UH_WLOCK_ASSERT(ch);
 MPASS(kidx != 0);

 data->flags |= DYN_REFERENCED;

 obj = SRV_OBJECT(ch, kidx);
 obj->no.refcnt++;
 MPASS(obj->no.etlv == IPFW_TLV_STATE_NAME);


 rule->refcnt++;
}
