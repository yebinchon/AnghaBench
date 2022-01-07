
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct table_info {int dummy; } ;
struct TYPE_4__ {int kidx; } ;
struct table_config {int linked; TYPE_1__* ta; int astate; struct table_info ti_copy; TYPE_2__ no; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {int refcnt; int (* change_ti ) (int ,struct table_info*) ;} ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 struct table_info* KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 int ipfw_objhash_add (struct namedobj_instance*,TYPE_2__*) ;
 int stub1 (int ,struct table_info*) ;

__attribute__((used)) static void
link_table(struct ip_fw_chain *ch, struct table_config *tc)
{
 struct namedobj_instance *ni;
 struct table_info *ti;
 uint16_t kidx;

 IPFW_UH_WLOCK_ASSERT(ch);

 ni = CHAIN_TO_NI(ch);
 kidx = tc->no.kidx;

 ipfw_objhash_add(ni, &tc->no);

 ti = KIDX_TO_TI(ch, kidx);
 *ti = tc->ti_copy;


 if (tc->ta->change_ti != ((void*)0))
  tc->ta->change_ti(tc->astate, ti);

 tc->linked = 1;
 tc->ta->refcnt++;
}
