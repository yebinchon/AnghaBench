
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int ta_buf ;
struct tableop_state {scalar_t__ modified; } ;
struct table_info {int dummy; } ;
struct TYPE_2__ {int refcnt; int kidx; } ;
struct table_config {TYPE_1__ no; int astate; struct table_algo* ta; } ;
struct table_algo {scalar_t__ (* need_modify ) (int ,struct table_info*,int ,scalar_t__*) ;int (* prepare_mod ) (char*,scalar_t__*) ;int (* fill_mod ) (int ,struct table_info*,char*,scalar_t__*) ;int (* flush_mod ) (char*) ;int (* modify ) (int ,struct table_info*,char*,scalar_t__) ;} ;
struct ip_fw_chain {int dummy; } ;


 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 struct table_info* KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 int TA_BUF_SZ ;
 int add_toperation_state (struct ip_fw_chain*,struct tableop_state*) ;
 int del_toperation_state (struct ip_fw_chain*,struct tableop_state*) ;
 int memset (char**,int ,int) ;
 scalar_t__ stub1 (int ,struct table_info*,int ,scalar_t__*) ;
 int stub2 (char*,scalar_t__*) ;
 int stub3 (char*) ;
 scalar_t__ stub4 (int ,struct table_info*,int ,scalar_t__*) ;
 int stub5 (char*) ;
 int stub6 (int ,struct table_info*,char*,scalar_t__*) ;
 int stub7 (int ,struct table_info*,char*,scalar_t__) ;
 int stub8 (char*) ;

__attribute__((used)) static int
check_table_space(struct ip_fw_chain *ch, struct tableop_state *ts,
    struct table_config *tc, struct table_info *ti, uint32_t count)
{
 struct table_algo *ta;
 uint64_t pflags;
 char ta_buf[TA_BUF_SZ];
 int error;

 IPFW_UH_WLOCK_ASSERT(ch);

 error = 0;
 ta = tc->ta;
 if (ta->need_modify == ((void*)0))
  return (0);


 tc->no.refcnt++;






 while (1) {
  pflags = 0;
  if (ta->need_modify(tc->astate, ti, count, &pflags) == 0) {
   error = 0;
   break;
  }


  if (ts != ((void*)0))
   add_toperation_state(ch, ts);
  IPFW_UH_WUNLOCK(ch);

  memset(&ta_buf, 0, sizeof(ta_buf));
  error = ta->prepare_mod(ta_buf, &pflags);

  IPFW_UH_WLOCK(ch);
  if (ts != ((void*)0))
   del_toperation_state(ch, ts);

  if (error != 0)
   break;

  if (ts != ((void*)0) && ts->modified != 0) {






   ta->flush_mod(ta_buf);
   break;
  }


  ti = KIDX_TO_TI(ch, tc->no.kidx);
  if (ta->need_modify(tc->astate, ti, count, &pflags) == 0) {
   IPFW_UH_WUNLOCK(ch);





   ta->flush_mod(ta_buf);
   break;
  }

  error = ta->fill_mod(tc->astate, ti, ta_buf, &pflags);
  if (error == 0) {

   IPFW_WLOCK(ch);
   ta->modify(tc->astate, ti, ta_buf, pflags);
   IPFW_WUNLOCK(ch);
  }


  ta->flush_mod(ta_buf);
 }

 tc->no.refcnt--;
 return (error);
}
