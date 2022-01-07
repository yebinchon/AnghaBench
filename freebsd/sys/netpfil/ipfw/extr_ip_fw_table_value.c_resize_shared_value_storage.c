
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdump_args {struct table_value* pval; } ;
struct tables_config {int val_size; } ;
struct table_value {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {struct table_value* valuestate; } ;
typedef int da ;


 struct tables_config* CHAIN_TO_TCFG (struct ip_fw_chain*) ;
 struct namedobj_instance* CHAIN_TO_VI (struct ip_fw_chain*) ;
 int ENOSPC ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (struct table_value*,int ) ;
 int ipfw_objhash_bitmap_alloc (int,void*,int*) ;
 int ipfw_objhash_bitmap_free (void*,int) ;
 int ipfw_objhash_bitmap_merge (struct namedobj_instance*,void**,int*) ;
 int ipfw_objhash_bitmap_swap (struct namedobj_instance*,void**,int*) ;
 int ipfw_objhash_foreach (struct namedobj_instance*,int ,struct vdump_args*) ;
 struct table_value* malloc (int,int ,int) ;
 int memcpy (struct table_value*,struct table_value*,int) ;
 int memset (struct vdump_args*,int ,int) ;
 int rollback_toperation_state (struct ip_fw_chain*,struct ip_fw_chain*) ;
 int update_tvalue ;

__attribute__((used)) static int
resize_shared_value_storage(struct ip_fw_chain *ch)
{
 struct tables_config *tcfg;
 struct namedobj_instance *vi;
 struct table_value *pval, *valuestate, *old_valuestate;
 void *new_idx;
 struct vdump_args da;
 int new_blocks;
 int val_size, val_size_old;

 IPFW_UH_WLOCK_ASSERT(ch);

 valuestate = ((void*)0);
 new_idx = ((void*)0);

 pval = (struct table_value *)ch->valuestate;
 vi = CHAIN_TO_VI(ch);
 tcfg = CHAIN_TO_TCFG(ch);

 val_size = tcfg->val_size * 2;

 if (val_size == (1 << 30))
  return (ENOSPC);

 IPFW_UH_WUNLOCK(ch);

 valuestate = malloc(sizeof(struct table_value) * val_size, M_IPFW,
     M_WAITOK | M_ZERO);
 ipfw_objhash_bitmap_alloc(val_size, (void *)&new_idx,
     &new_blocks);

 IPFW_UH_WLOCK(ch);




 if (tcfg->val_size >= val_size)
  goto done;


 pval = (struct table_value *)ch->valuestate;
 rollback_toperation_state(ch, ch);


 memcpy(valuestate, pval, sizeof(struct table_value) * tcfg->val_size);
 ipfw_objhash_bitmap_merge(CHAIN_TO_VI(ch), &new_idx, &new_blocks);

 IPFW_WLOCK(ch);

 old_valuestate = ch->valuestate;
 ch->valuestate = valuestate;
 valuestate = old_valuestate;
 ipfw_objhash_bitmap_swap(CHAIN_TO_VI(ch), &new_idx, &new_blocks);

 val_size_old = tcfg->val_size;
 tcfg->val_size = val_size;
 val_size = val_size_old;
 IPFW_WUNLOCK(ch);

 memset(&da, 0, sizeof(da));
 da.pval = (struct table_value *)ch->valuestate;
 ipfw_objhash_foreach(vi, update_tvalue, &da);

done:
 free(valuestate, M_IPFW);
 ipfw_objhash_bitmap_free(new_idx, new_blocks);

 return (0);
}
