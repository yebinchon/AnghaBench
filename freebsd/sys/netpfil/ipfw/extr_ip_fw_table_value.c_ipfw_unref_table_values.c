
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_info {int dummy; } ;
struct table_config {int dummy; } ;
struct table_algo {int (* foreach ) (void*,struct table_info*,int ,struct flush_args*) ;} ;
struct ip_fw_chain {int dummy; } ;
struct flush_args {struct table_info* ti; void* astate; struct table_algo* ta; struct ip_fw_chain* ch; } ;
typedef int fa ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int memset (struct flush_args*,int ,int) ;
 int stub1 (void*,struct table_info*,int ,struct flush_args*) ;
 int unref_table_value_cb ;

void
ipfw_unref_table_values(struct ip_fw_chain *ch, struct table_config *tc,
    struct table_algo *ta, void *astate, struct table_info *ti)
{
 struct flush_args fa;

 IPFW_UH_WLOCK_ASSERT(ch);

 memset(&fa, 0, sizeof(fa));
 fa.ch = ch;
 fa.ta = ta;
 fa.astate = astate;
 fa.ti = ti;

 ta->foreach(astate, ti, unref_table_value_cb, &fa);
}
