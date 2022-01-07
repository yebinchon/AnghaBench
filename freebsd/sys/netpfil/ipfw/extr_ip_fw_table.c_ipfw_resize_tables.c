
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table_info {int * lookup; } ;
struct table_config {int astate; TYPE_1__* ta; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {void* tablestate; } ;
struct TYPE_2__ {int (* change_ti ) (int ,struct table_info*) ;} ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int EINVAL ;
 unsigned int IPFW_TABLES_MAX ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 unsigned int V_fw_tables_max ;
 int free (void*,int ) ;
 int ipfw_objhash_bitmap_alloc (unsigned int,void*,int*) ;
 int ipfw_objhash_bitmap_free (void*,int) ;
 int ipfw_objhash_bitmap_merge (struct namedobj_instance*,void**,int*) ;
 int ipfw_objhash_bitmap_swap (struct namedobj_instance*,void**,int*) ;
 scalar_t__ ipfw_objhash_lookup_kidx (struct namedobj_instance*,int) ;
 void* malloc (unsigned int,int ,int) ;
 int memcpy (void*,void*,int) ;
 scalar_t__ roundup2p (unsigned int) ;
 int stub1 (int ,struct table_info*) ;

int
ipfw_resize_tables(struct ip_fw_chain *ch, unsigned int ntables)
{
 unsigned int ntables_old, tbl;
 struct namedobj_instance *ni;
 void *new_idx, *old_tablestate, *tablestate;
 struct table_info *ti;
 struct table_config *tc;
 int i, new_blocks;


 if (ntables == 0)
  return (EINVAL);
 if (ntables > IPFW_TABLES_MAX)
  ntables = IPFW_TABLES_MAX;

 ntables = (unsigned int)roundup2p(ntables);


 tablestate = malloc(ntables * sizeof(struct table_info),
     M_IPFW, M_WAITOK | M_ZERO);

 ipfw_objhash_bitmap_alloc(ntables, (void *)&new_idx, &new_blocks);

 IPFW_UH_WLOCK(ch);

 tbl = (ntables >= V_fw_tables_max) ? V_fw_tables_max : ntables;
 ni = CHAIN_TO_NI(ch);


 if (ntables < V_fw_tables_max) {




  IPFW_UH_WUNLOCK(ch);
  return (EINVAL);
 }


 memcpy(tablestate, ch->tablestate, sizeof(struct table_info) * tbl);
 ipfw_objhash_bitmap_merge(ni, &new_idx, &new_blocks);

 IPFW_WLOCK(ch);


 old_tablestate = ch->tablestate;
 ch->tablestate = tablestate;
 ipfw_objhash_bitmap_swap(ni, &new_idx, &new_blocks);

 ntables_old = V_fw_tables_max;
 V_fw_tables_max = ntables;

 IPFW_WUNLOCK(ch);


 ti = (struct table_info *)ch->tablestate;
 for (i = 0; i < tbl; i++, ti++) {
  if (ti->lookup == ((void*)0))
   continue;
  tc = (struct table_config *)ipfw_objhash_lookup_kidx(ni, i);
  if (tc == ((void*)0) || tc->ta->change_ti == ((void*)0))
   continue;

  tc->ta->change_ti(tc->astate, ti);
 }

 IPFW_UH_WUNLOCK(ch);


 free(old_tablestate, M_IPFW);
 ipfw_objhash_bitmap_free(new_idx, new_blocks);

 return (0);
}
