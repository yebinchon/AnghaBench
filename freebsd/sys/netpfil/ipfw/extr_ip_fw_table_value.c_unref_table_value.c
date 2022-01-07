
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct table_value {scalar_t__ refcnt; } ;
struct table_val_link {int no; } ;
struct namedobj_instance {int dummy; } ;


 int KASSERT (int,char*) ;
 int M_IPFW ;
 int free (struct table_val_link*,int ) ;
 int ipfw_objhash_del (struct namedobj_instance*,int *) ;
 int ipfw_objhash_free_idx (struct namedobj_instance*,size_t) ;
 scalar_t__ ipfw_objhash_lookup_kidx (struct namedobj_instance*,size_t) ;

__attribute__((used)) static void
unref_table_value(struct namedobj_instance *vi, struct table_value *pval,
    uint32_t kidx)
{
 struct table_val_link *ptvl;

 KASSERT(pval[kidx].refcnt > 0, ("Refcount is 0 on kidx %d", kidx));
 if (--pval[kidx].refcnt > 0)
  return;


 ptvl = (struct table_val_link *)ipfw_objhash_lookup_kidx(vi, kidx);
 KASSERT(ptvl != ((void*)0), ("lookup on value kidx %d failed", kidx));
 ipfw_objhash_del(vi, &ptvl->no);
 ipfw_objhash_free_idx(vi, kidx);
 free(ptvl, M_IPFW);
}
