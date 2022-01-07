
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knote {int dummy; } ;
struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {TYPE_1__ sel; } ;


 TYPE_2__ devsoftc ;
 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
filt_devctl_detach(struct knote *kn)
{

 knlist_remove(&devsoftc.sel.si_note, kn, 0);
}
