
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct tid_info {int dummy; } ;
struct tentry_info {int dummy; } ;
struct TYPE_2__ {int kidx; int refcnt; } ;
struct table_config {int count; int astate; TYPE_1__ no; struct table_algo* ta; } ;
struct table_algo {int (* del ) (int ,int ,struct tentry_info*,char*,int*) ;int ta_buf_size; } ;
struct ip_fw_chain {int dummy; } ;
typedef char* caddr_t ;


 int EINVAL ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 int KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 int OP_DEL ;
 int TA_BUF_SZ ;
 int check_table_space (struct ip_fw_chain*,int *,struct table_config*,int ,int ) ;
 int find_ref_table (struct ip_fw_chain*,struct tid_info*,struct tentry_info*,int,int ,struct table_config**) ;
 int flush_batch_buffer (struct ip_fw_chain*,struct table_algo*,struct tentry_info*,int,int ,char*,char*) ;
 int ipfw_garbage_table_values (struct ip_fw_chain*,struct table_config*,struct tentry_info*,int,int ) ;
 int prepare_batch_buffer (struct ip_fw_chain*,struct table_algo*,struct tentry_info*,int,int ,char**) ;
 int store_tei_result (struct tentry_info*,int ,int,int) ;
 int stub1 (int ,int ,struct tentry_info*,char*,int*) ;

int
del_table_entry(struct ip_fw_chain *ch, struct tid_info *ti,
    struct tentry_info *tei, uint8_t flags, uint32_t count)
{
 struct table_config *tc;
 struct table_algo *ta;
 struct tentry_info *ptei;
 uint16_t kidx;
 int error, first_error, i;
 uint32_t num, numdel;
 char ta_buf[TA_BUF_SZ];
 caddr_t ta_buf_m, v;




 IPFW_UH_WLOCK(ch);
 error = find_ref_table(ch, ti, tei, count, OP_DEL, &tc);
 if (error != 0) {
  IPFW_UH_WUNLOCK(ch);
  return (error);
 }
 ta = tc->ta;
 IPFW_UH_WUNLOCK(ch);



 ta_buf_m = ta_buf;
 error = prepare_batch_buffer(ch, ta, tei, count, OP_DEL, &ta_buf_m);
 if (error != 0)
  goto cleanup;

 IPFW_UH_WLOCK(ch);


 tc->no.refcnt--;





 if (ta != tc->ta) {
  IPFW_UH_WUNLOCK(ch);
  error = EINVAL;
  goto cleanup;
 }

 kidx = tc->no.kidx;
 numdel = 0;
 first_error = 0;

 IPFW_WLOCK(ch);
 v = ta_buf_m;
 for (i = 0; i < count; i++, v += ta->ta_buf_size) {
  ptei = &tei[i];
  num = 0;
  error = ta->del(tc->astate, KIDX_TO_TI(ch, kidx), ptei, v,
      &num);

  store_tei_result(ptei, OP_DEL, error, num);
  if (error != 0 && first_error == 0)
   first_error = error;
  tc->count -= num;
  numdel += num;
 }
 IPFW_WUNLOCK(ch);


 ipfw_garbage_table_values(ch, tc, tei, count, 0);

 if (numdel != 0) {

  check_table_space(ch, ((void*)0), tc, KIDX_TO_TI(ch, kidx), 0);
 }

 IPFW_UH_WUNLOCK(ch);


 error = first_error;

cleanup:
 flush_batch_buffer(ch, ta, tei, count, 0, ta_buf_m, ta_buf);

 return (error);
}
