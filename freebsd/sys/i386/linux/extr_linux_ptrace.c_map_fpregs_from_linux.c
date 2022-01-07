
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_pt_fpreg {int st_space; int fos; int foo; int fcs; int fip; int twd; int swd; int cwd; } ;
struct fpreg {int fpr_acc; int * fpr_env; } ;


 int bcopy (int ,int ,int) ;

__attribute__((used)) static void
map_fpregs_from_linux(struct fpreg *bsd_r, struct linux_pt_fpreg *linux_r)
{
 bsd_r->fpr_env[0] = linux_r->cwd;
 bsd_r->fpr_env[1] = linux_r->swd;
 bsd_r->fpr_env[2] = linux_r->twd;
 bsd_r->fpr_env[3] = linux_r->fip;
 bsd_r->fpr_env[4] = linux_r->fcs;
 bsd_r->fpr_env[5] = linux_r->foo;
 bsd_r->fpr_env[6] = linux_r->fos;
 bcopy(bsd_r->fpr_acc, linux_r->st_space, sizeof(bsd_r->fpr_acc));
}
