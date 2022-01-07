
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct procdesc {TYPE_1__ pd_selinfo; } ;
struct knote {int kn_filter; int kn_flags; int * kn_fop; } ;
struct file {struct procdesc* f_data; } ;


 int EINVAL ;

 int EV_CLEAR ;
 int knlist_add (int *,struct knote*,int ) ;
 int procdesc_kqops ;

__attribute__((used)) static int
procdesc_kqfilter(struct file *fp, struct knote *kn)
{
 struct procdesc *pd;

 pd = fp->f_data;
 switch (kn->kn_filter) {
 case 128:
  kn->kn_fop = &procdesc_kqops;
  kn->kn_flags |= EV_CLEAR;
  knlist_add(&pd->pd_selinfo.si_note, kn, 0);
  return (0);
 default:
  return (EINVAL);
 }
}
