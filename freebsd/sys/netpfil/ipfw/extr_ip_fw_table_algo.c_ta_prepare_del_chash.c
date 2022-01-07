
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tentry_info {int dummy; } ;
struct ta_buf_chash {int ent; } ;
struct ip_fw_chain {int dummy; } ;


 int tei_to_chash_ent (struct tentry_info*,int *) ;

__attribute__((used)) static int
ta_prepare_del_chash(struct ip_fw_chain *ch, struct tentry_info *tei,
    void *ta_buf)
{
 struct ta_buf_chash *tb;

 tb = (struct ta_buf_chash *)ta_buf;

 return (tei_to_chash_ent(tei, &tb->ent));
}
