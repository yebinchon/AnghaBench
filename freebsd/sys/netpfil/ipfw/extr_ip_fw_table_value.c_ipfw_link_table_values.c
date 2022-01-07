
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct tentry_info {scalar_t__ value; int * ptv; int pvalue; } ;
struct TYPE_5__ {int (* func ) (struct table_config*,TYPE_2__*) ;} ;
struct tableop_state {int count; scalar_t__ modified; TYPE_2__ opstate; struct table_config* tc; int vmask; struct tentry_info* tei; TYPE_1__* ta; int vshared; } ;
struct table_value {int refcnt; } ;
struct TYPE_6__ {int kidx; char* name; } ;
struct table_val_link {TYPE_3__ no; struct table_value* pval; } ;
struct table_config {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {struct table_value* valuestate; } ;
struct TYPE_4__ {int vlimit; } ;


 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int KASSERT (int,char*) ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int add_toperation_state (struct ip_fw_chain*,struct tableop_state*) ;
 int alloc_table_vidx (struct ip_fw_chain*,struct tableop_state*,struct namedobj_instance*,size_t*) ;
 int del_toperation_state (struct ip_fw_chain*,struct tableop_state*) ;
 int get_value_ptrs (struct ip_fw_chain*,struct table_config*,int ,struct table_value**,struct namedobj_instance**) ;
 int ipfw_objhash_add (struct namedobj_instance*,TYPE_3__*) ;
 scalar_t__ ipfw_objhash_lookup_name (struct namedobj_instance*,int ,char*) ;
 int * malloc (int,int ,int) ;
 int mask_table_value (int ,struct table_value*,int ) ;
 int memcpy (struct table_value*,struct table_value*,int) ;
 int stub1 (struct table_config*,TYPE_2__*) ;
 int tc_ref (struct table_config*) ;
 int tc_unref (struct table_config*) ;

int
ipfw_link_table_values(struct ip_fw_chain *ch, struct tableop_state *ts)
{
 int error, i, found;
 struct namedobj_instance *vi;
 struct table_config *tc;
 struct tentry_info *tei, *ptei;
 uint32_t count, vlimit;
 uint16_t vidx;
 struct table_val_link *ptv;
 struct table_value tval, *pval;





 IPFW_UH_WLOCK_ASSERT(ch);
 get_value_ptrs(ch, ts->tc, ts->vshared, &pval, &vi);

 error = 0;
 found = 0;
 vlimit = ts->ta->vlimit;
 vidx = 0;
 tc = ts->tc;
 tei = ts->tei;
 count = ts->count;
 for (i = 0; i < count; i++) {
  ptei = &tei[i];
  ptei->value = 0;
  mask_table_value(ptei->pvalue, &tval, ts->vmask);
  ptv = (struct table_val_link *)ipfw_objhash_lookup_name(vi, 0,
      (char *)&tval);
  if (ptv == ((void*)0))
   continue;

  if (vlimit > 0 && vlimit <= ptv->no.kidx)
   continue;


  ptv->pval->refcnt++;
  ptei->value = ptv->no.kidx;
  found++;
 }

 if (ts->count == found) {

  return (0);
 }





 add_toperation_state(ch, ts);

 tc_ref(tc);
 IPFW_UH_WUNLOCK(ch);




 for (i = 0; i < count; i++) {
  ptei = &tei[i];
  if (ptei->value != 0)
   continue;
  if (ptei->ptv != ((void*)0))
   continue;
  ptei->ptv = malloc(sizeof(struct table_val_link), M_IPFW,
      M_WAITOK | M_ZERO);
 }





 IPFW_UH_WLOCK(ch);
 tc_unref(tc);
 del_toperation_state(ch, ts);
 if (ts->modified != 0) {






  return (0);
 }

 KASSERT(pval == ch->valuestate, ("resize_storage() notify failure"));


 for (i = 0; i < count; i++) {
  ptei = &tei[i];


  mask_table_value(ptei->pvalue, &tval, ts->vmask);
  ptv = (struct table_val_link *)ipfw_objhash_lookup_name(vi, 0,
      (char *)&tval);
  if (ptv != ((void*)0)) {
   ptv->pval->refcnt++;
   ptei->value = ptv->no.kidx;
   continue;
  }


  error = alloc_table_vidx(ch, ts, vi, &vidx);
  if (error != 0) {
   ts->opstate.func(ts->tc, &ts->opstate);
   return (error);
  }

  if (ts->modified != 0)
   return (0);


  ptei->value = vidx;
  ptv = (struct table_val_link *)ptei->ptv;
  ptei->ptv = ((void*)0);

  ptv->no.kidx = vidx;
  ptv->no.name = (char *)&pval[vidx];
  ptv->pval = &pval[vidx];
  memcpy(ptv->pval, &tval, sizeof(struct table_value));
  pval[vidx].refcnt = 1;
  ipfw_objhash_add(vi, &ptv->no);
 }

 return (0);
}
