
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ refcnt; int kidx; } ;
struct table_config {char* tablename; int ti_copy; int astate; int ta; TYPE_1__ no; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int EBUSY ;
 int ESRCH ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 struct table_config* find_table (struct namedobj_instance*,struct tid_info*) ;
 int free_table_config (struct namedobj_instance*,struct table_config*) ;
 scalar_t__ ipfw_objhash_free_idx (struct namedobj_instance*,int) ;
 int ipfw_unref_table_values (struct ip_fw_chain*,struct table_config*,int ,int ,int *) ;
 int printf (char*,int,char*) ;
 int unlink_table (struct ip_fw_chain*,struct table_config*) ;

__attribute__((used)) static int
destroy_table(struct ip_fw_chain *ch, struct tid_info *ti)
{
 struct namedobj_instance *ni;
 struct table_config *tc;

 IPFW_UH_WLOCK(ch);

 ni = CHAIN_TO_NI(ch);
 if ((tc = find_table(ni, ti)) == ((void*)0)) {
  IPFW_UH_WUNLOCK(ch);
  return (ESRCH);
 }


 if (tc->no.refcnt > 0) {
  IPFW_UH_WUNLOCK(ch);
  return (EBUSY);
 }

 IPFW_WLOCK(ch);
 unlink_table(ch, tc);
 IPFW_WUNLOCK(ch);


 if (ipfw_objhash_free_idx(ni, tc->no.kidx) != 0)
  printf("Error unlinking kidx %d from table %s\n",
      tc->no.kidx, tc->tablename);


 ipfw_unref_table_values(ch, tc, tc->ta, tc->astate, &tc->ti_copy);
 IPFW_UH_WUNLOCK(ch);

 free_table_config(ni, tc);

 return (0);
}
