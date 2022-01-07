
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct tid_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ subtype; int kidx; int refcnt; int etlv; } ;
struct table_config {int locked; TYPE_1__ no; int limit; int vmask; } ;
struct table_algo {int flags; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_5__ {int flags; int limit; int vmask; int tflags; } ;
typedef TYPE_2__ ipfw_xtable_info ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int CHAIN_TO_TCFG (struct ip_fw_chain*) ;
 int EBUSY ;
 int EEXIST ;
 int ENOMEM ;
 int ENOTSUP ;
 int IPFW_TGFLAGS_LOCKED ;
 int IPFW_TLV_TBL_NAME ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int TA_FLAG_READONLY ;
 struct table_config* alloc_table_config (struct ip_fw_chain*,struct tid_info*,struct table_algo*,char*,int ) ;
 struct table_config* find_table (struct namedobj_instance*,struct tid_info*) ;
 struct table_algo* find_table_algo (int ,struct tid_info*,char*) ;
 int free_table_config (struct namedobj_instance*,struct table_config*) ;
 scalar_t__ ipfw_objhash_alloc_idx (struct namedobj_instance*,int *) ;
 int link_table (struct ip_fw_chain*,struct table_config*) ;
 int printf (char*) ;

__attribute__((used)) static int
create_table_internal(struct ip_fw_chain *ch, struct tid_info *ti,
    char *aname, ipfw_xtable_info *i, uint16_t *pkidx, int compat)
{
 struct namedobj_instance *ni;
 struct table_config *tc, *tc_new, *tmp;
 struct table_algo *ta;
 uint16_t kidx;

 ni = CHAIN_TO_NI(ch);

 ta = find_table_algo(CHAIN_TO_TCFG(ch), ti, aname);
 if (ta == ((void*)0))
  return (ENOTSUP);

 tc = alloc_table_config(ch, ti, ta, aname, i->tflags);
 if (tc == ((void*)0))
  return (ENOMEM);

 tc->vmask = i->vmask;
 tc->limit = i->limit;
 if (ta->flags & TA_FLAG_READONLY)
  tc->locked = 1;
 else
  tc->locked = (i->flags & IPFW_TGFLAGS_LOCKED) != 0;

 IPFW_UH_WLOCK(ch);


 tc_new = find_table(ni, ti);
 if (tc_new != ((void*)0)) {






  if (compat == 0 || tc_new->no.subtype != tc->no.subtype) {
   IPFW_UH_WUNLOCK(ch);
   free_table_config(ni, tc);
   return (EEXIST);
  }


  tmp = tc;
  tc = tc_new;
  tc_new = tmp;
 } else {

  if (ipfw_objhash_alloc_idx(ni, &kidx) != 0) {
   IPFW_UH_WUNLOCK(ch);
   printf("Unable to allocate table index."
       " Consider increasing net.inet.ip.fw.tables_max");
   free_table_config(ni, tc);
   return (EBUSY);
  }
  tc->no.kidx = kidx;
  tc->no.etlv = IPFW_TLV_TBL_NAME;

  link_table(ch, tc);
 }

 if (compat != 0)
  tc->no.refcnt++;
 if (pkidx != ((void*)0))
  *pkidx = tc->no.kidx;

 IPFW_UH_WUNLOCK(ch);

 if (tc_new != ((void*)0))
  free_table_config(ni, tc_new);

 return (0);
}
