
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tentry_info {int dummy; } ;
struct ta_buf_radix {int * ent_ptr; } ;
struct ip_fw_chain {int dummy; } ;


 int M_IPFW_TBL ;
 int free (int *,int ) ;

__attribute__((used)) static void
ta_flush_radix_entry(struct ip_fw_chain *ch, struct tentry_info *tei,
    void *ta_buf)
{
 struct ta_buf_radix *tb;

 tb = (struct ta_buf_radix *)ta_buf;

 if (tb->ent_ptr != ((void*)0))
  free(tb->ent_ptr, M_IPFW_TBL);
}
