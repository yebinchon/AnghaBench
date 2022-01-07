
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_lock {int l_len; int l_offset; int svid; int oh; int fh; int caller_name; } ;
struct nlm4_lock {int l_len; int l_offset; int svid; int oh; int fh; int caller_name; } ;



__attribute__((used)) static void
nlm_convert_to_nlm_lock(struct nlm_lock *dst, struct nlm4_lock *src)
{

 dst->caller_name = src->caller_name;
 dst->fh = src->fh;
 dst->oh = src->oh;
 dst->svid = src->svid;
 dst->l_offset = src->l_offset;
 dst->l_len = src->l_len;
}
