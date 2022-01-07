
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_file {int kf_type; } ;
struct filedesc {int dummy; } ;
struct file {int dummy; } ;


 int KF_TYPE_KQUEUE ;

__attribute__((used)) static int
kqueue_fill_kinfo(struct file *fp, struct kinfo_file *kif, struct filedesc *fdp)
{

 kif->kf_type = KF_TYPE_KQUEUE;
 return (0);
}
