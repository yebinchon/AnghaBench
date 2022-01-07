
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_flags; } ;


 int EV_CLEAR ;
 int fs_knlist ;
 int knlist_add (int *,struct knote*,int ) ;

__attribute__((used)) static int
filt_fsattach(struct knote *kn)
{

 kn->kn_flags |= EV_CLEAR;
 knlist_add(&fs_knlist, kn, 0);
 return (0);
}
