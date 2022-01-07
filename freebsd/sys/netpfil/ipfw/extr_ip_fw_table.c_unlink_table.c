
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct table_info {int dummy; } ;
struct TYPE_4__ {int kidx; } ;
struct table_config {int astate; TYPE_1__* ta; scalar_t__ linked; TYPE_2__ no; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {int (* change_ti ) (int ,int *) ;int refcnt; } ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int IPFW_WLOCK_ASSERT (struct ip_fw_chain*) ;
 struct table_info* KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 int ipfw_objhash_del (struct namedobj_instance*,TYPE_2__*) ;
 int memset (struct table_info*,int ,int) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void
unlink_table(struct ip_fw_chain *ch, struct table_config *tc)
{
 struct namedobj_instance *ni;
 struct table_info *ti;
 uint16_t kidx;

 IPFW_UH_WLOCK_ASSERT(ch);
 IPFW_WLOCK_ASSERT(ch);

 ni = CHAIN_TO_NI(ch);
 kidx = tc->no.kidx;


 ipfw_objhash_del(ni, &tc->no);
 ti = KIDX_TO_TI(ch, kidx);
 memset(ti, 0, sizeof(struct table_info));
 tc->linked = 0;
 tc->ta->refcnt--;


 if (tc->ta->change_ti != ((void*)0))
  tc->ta->change_ti(tc->astate, ((void*)0));
}
