
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct procdesc {TYPE_2__ pd_selinfo; } ;
struct knote {TYPE_1__* kn_fp; } ;
struct TYPE_3__ {struct procdesc* f_data; } ;


 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
procdesc_kqops_detach(struct knote *kn)
{
 struct procdesc *pd;

 pd = kn->kn_fp->f_data;
 knlist_remove(&pd->pd_selinfo.si_note, kn, 0);
}
