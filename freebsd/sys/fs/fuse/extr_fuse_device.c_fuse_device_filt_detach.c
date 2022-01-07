
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {int * kn_hook; } ;
struct TYPE_2__ {int si_note; } ;
struct fuse_data {TYPE_1__ ks_rsel; } ;


 int MPASS (int ) ;
 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
fuse_device_filt_detach(struct knote *kn)
{
 struct fuse_data *data;

 data = (struct fuse_data*)kn->kn_hook;
 MPASS(data != ((void*)0));
 knlist_remove(&data->ks_rsel.si_note, kn, 0);
 kn->kn_hook = ((void*)0);
}
