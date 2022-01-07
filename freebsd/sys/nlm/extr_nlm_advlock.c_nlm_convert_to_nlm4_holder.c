
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_holder {int l_len; int l_offset; int oh; int svid; int exclusive; } ;
struct nlm4_holder {int l_len; int l_offset; int oh; int svid; int exclusive; } ;



__attribute__((used)) static void
nlm_convert_to_nlm4_holder(struct nlm4_holder *dst, struct nlm_holder *src)
{

 dst->exclusive = src->exclusive;
 dst->svid = src->svid;
 dst->oh = src->oh;
 dst->l_offset = src->l_offset;
 dst->l_len = src->l_len;
}
