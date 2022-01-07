
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * p_proc; } ;
struct knote {TYPE_1__ kn_ptr; int kn_knlist; } ;


 int knlist_remove (int ,struct knote*,int ) ;

__attribute__((used)) static void
filt_procdetach(struct knote *kn)
{

 knlist_remove(kn->kn_knlist, kn, 0);
 kn->kn_ptr.p_proc = ((void*)0);
}
