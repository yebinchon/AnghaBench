
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tentry_info {int * ptv; } ;
struct table_algo {size_t ta_buf_size; int (* flush_entry ) (struct ip_fw_chain*,struct tentry_info*,int *) ;} ;
struct ip_fw_chain {int dummy; } ;
typedef int * caddr_t ;


 int M_IPFW ;
 int M_TEMP ;
 int free (int *,int ) ;
 int stub1 (struct ip_fw_chain*,struct tentry_info*,int *) ;
 int stub2 (struct ip_fw_chain*,struct tentry_info*,int *) ;

__attribute__((used)) static void
flush_batch_buffer(struct ip_fw_chain *ch, struct table_algo *ta,
    struct tentry_info *tei, uint32_t count, int rollback,
    caddr_t ta_buf_m, caddr_t ta_buf)
{
 caddr_t v;
 struct tentry_info *ptei;
 size_t ta_buf_sz;
 int i;

 ta_buf_sz = ta->ta_buf_size;


 v = ta_buf_m;
 for (i = 0; i < count; i++, v += ta_buf_sz) {
  ptei = &tei[i];
  ta->flush_entry(ch, ptei, v);
  if (ptei->ptv != ((void*)0)) {
   free(ptei->ptv, M_IPFW);
   ptei->ptv = ((void*)0);
  }
 }


 if (rollback != 0) {
  v = ta_buf_m + count * ta_buf_sz;
  for (i = 0; i < count; i++, v += ta_buf_sz)
   ta->flush_entry(ch, &tei[i], v);
 }

 if (ta_buf_m != ta_buf)
  free(ta_buf_m, M_TEMP);
}
