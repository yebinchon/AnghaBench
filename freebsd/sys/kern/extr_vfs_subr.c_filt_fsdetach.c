
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;


 int fs_knlist ;
 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
filt_fsdetach(struct knote *kn)
{

 knlist_remove(&fs_knlist, kn, 0);
}
