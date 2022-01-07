
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct tid_info {scalar_t__ type; } ;
struct tentry_info {int flags; } ;
struct TYPE_2__ {scalar_t__ subtype; int refcnt; } ;
struct table_config {scalar_t__ locked; TYPE_1__ no; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 struct namedobj_instance* CHAIN_TO_NI (struct ip_fw_chain*) ;
 int EACCES ;
 int EFBIG ;
 int EINVAL ;
 int ESRCH ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int KASSERT (int ,char*) ;
 int OP_ADD ;
 int OP_DEL ;
 int TEI_FLAGS_COMPAT ;
 scalar_t__ check_table_limit (struct table_config*,struct tentry_info*) ;
 int create_table_compat (struct ip_fw_chain*,struct tid_info*,int *) ;
 struct table_config* find_table (struct namedobj_instance*,struct tid_info*) ;
 scalar_t__ ipfw_objhash_lookup_kidx (struct namedobj_instance*,int ) ;

__attribute__((used)) static int
find_ref_table(struct ip_fw_chain *ch, struct tid_info *ti,
    struct tentry_info *tei, uint32_t count, int op,
    struct table_config **ptc)
{
 struct namedobj_instance *ni;
 struct table_config *tc;
 uint16_t kidx;
 int error;

 IPFW_UH_WLOCK_ASSERT(ch);

 ni = CHAIN_TO_NI(ch);
 tc = ((void*)0);
 if ((tc = find_table(ni, ti)) != ((void*)0)) {

  if (tc->no.subtype != ti->type)
   return (EINVAL);

  if (tc->locked != 0)
   return (EACCES);


  if (op == OP_ADD && count == 1 &&
      check_table_limit(tc, tei) != 0)
   return (EFBIG);


  tc->no.refcnt++;
  *ptc = tc;
  return (0);
 }

 if (op == OP_DEL)
  return (ESRCH);


 if ((tei->flags & TEI_FLAGS_COMPAT) == 0)
  return (ESRCH);

 IPFW_UH_WUNLOCK(ch);
 error = create_table_compat(ch, ti, &kidx);
 IPFW_UH_WLOCK(ch);

 if (error != 0)
  return (error);

 tc = (struct table_config *)ipfw_objhash_lookup_kidx(ni, kidx);
 KASSERT(tc != ((void*)0), ("create_table_compat returned bad idx %d", kidx));


 *ptc = tc;
 return (0);
}
