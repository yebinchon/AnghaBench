
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_lock {int l_len; int l_offset; int svid; int oh; int fh; int caller_name; } ;
struct nlm4_lock {int l_len; int l_offset; int svid; int oh; int fh; int caller_name; } ;



__attribute__((used)) static void
nlmtonlm4(struct nlm_lock *arg, struct nlm4_lock *arg4)
{
 arg4->caller_name = arg->caller_name;
 arg4->fh = arg->fh;
 arg4->oh = arg->oh;
 arg4->svid = arg->svid;
 arg4->l_offset = arg->l_offset;
 arg4->l_len = arg->l_len;
}
