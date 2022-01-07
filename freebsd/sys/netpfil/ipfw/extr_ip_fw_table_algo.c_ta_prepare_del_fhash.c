
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tentry_info {int dummy; } ;
struct TYPE_2__ {int e; } ;
struct ta_buf_fhash {TYPE_1__ fe6; } ;
struct ip_fw_chain {int dummy; } ;


 int tei_to_fhash_ent (struct tentry_info*,int *) ;

__attribute__((used)) static int
ta_prepare_del_fhash(struct ip_fw_chain *ch, struct tentry_info *tei,
    void *ta_buf)
{
 struct ta_buf_fhash *tb;

 tb = (struct ta_buf_fhash *)ta_buf;

 return (tei_to_fhash_ent(tei, &tb->fe6.e));
}
