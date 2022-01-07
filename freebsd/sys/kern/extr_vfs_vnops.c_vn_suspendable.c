
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {TYPE_1__* mnt_op; } ;
struct TYPE_2__ {int * vfs_susp_clean; } ;



__attribute__((used)) static bool
vn_suspendable(struct mount *mp)
{

 return (mp->mnt_op->vfs_susp_clean != ((void*)0));
}
