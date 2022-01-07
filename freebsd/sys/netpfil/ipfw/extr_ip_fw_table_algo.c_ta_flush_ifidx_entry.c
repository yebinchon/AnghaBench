
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tentry_info {int dummy; } ;
struct ta_buf_ifidx {int * ife; } ;
struct ip_fw_chain {int dummy; } ;


 int M_IPFW_TBL ;
 int free (int *,int ) ;

__attribute__((used)) static void
ta_flush_ifidx_entry(struct ip_fw_chain *ch, struct tentry_info *tei,
    void *ta_buf)
{
 struct ta_buf_ifidx *tb;

 tb = (struct ta_buf_ifidx *)ta_buf;

 if (tb->ife != ((void*)0))
  free(tb->ife, M_IPFW_TBL);
}
