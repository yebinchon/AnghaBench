
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {TYPE_2__* v_mount; } ;
struct inode {scalar_t__ i_number; int i_effnlink; } ;
typedef int intmax_t ;
struct TYPE_3__ {int f_mntonname; } ;
struct TYPE_4__ {TYPE_1__ mnt_stat; } ;


 struct inode* VTOI (struct vnode*) ;
 int uprintf (char*,char const*,int ,int ,int ) ;

__attribute__((used)) static void
print_bad_link_count(const char *funcname, struct vnode *dvp)
{
 struct inode *dip;

 dip = VTOI(dvp);
 uprintf("%s: Bad link count %d on parent inode %jd in file system %s\n",
     funcname, dip->i_effnlink, (intmax_t)dip->i_number,
     dvp->v_mount->mnt_stat.f_mntonname);
}
