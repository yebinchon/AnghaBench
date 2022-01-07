
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_share {int access; int mode; int oh; int fh; int caller_name; } ;
struct nlm4_share {int access; int mode; int oh; int fh; int caller_name; } ;



__attribute__((used)) static void
nlm_convert_to_nlm4_share(struct nlm4_share *dst, struct nlm_share *src)
{

 dst->caller_name = src->caller_name;
 dst->fh = src->fh;
 dst->oh = src->oh;
 dst->mode = src->mode;
 dst->access = src->access;
}
