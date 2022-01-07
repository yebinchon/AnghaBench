
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct procdesc {int pd_pid; } ;
struct TYPE_3__ {int kf_pid; } ;
struct TYPE_4__ {TYPE_1__ kf_proc; } ;
struct kinfo_file {TYPE_2__ kf_un; int kf_type; } ;
struct filedesc {int dummy; } ;
struct file {struct procdesc* f_data; } ;


 int KF_TYPE_PROCDESC ;

__attribute__((used)) static int
procdesc_fill_kinfo(struct file *fp, struct kinfo_file *kif,
    struct filedesc *fdp)
{
 struct procdesc *pdp;

 kif->kf_type = KF_TYPE_PROCDESC;
 pdp = fp->f_data;
 kif->kf_un.kf_proc.kf_pid = pdp->pd_pid;
 return (0);
}
