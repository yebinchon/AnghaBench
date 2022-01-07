
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_3__ {int kf_pts_dev; int kf_pts_dev_freebsd11; } ;
struct TYPE_4__ {TYPE_1__ kf_pts; } ;
struct kinfo_file {int kf_path; TYPE_2__ kf_un; int kf_type; } ;
struct filedesc {int dummy; } ;
struct file {struct tty* f_data; } ;


 int KF_TYPE_PTS ;
 int strlcpy (int ,int ,int) ;
 int tty_devname (struct tty*) ;
 int tty_udev (struct tty*) ;

__attribute__((used)) static int
ptsdev_fill_kinfo(struct file *fp, struct kinfo_file *kif, struct filedesc *fdp)
{
 struct tty *tp;

 kif->kf_type = KF_TYPE_PTS;
 tp = fp->f_data;
 kif->kf_un.kf_pts.kf_pts_dev = tty_udev(tp);
 kif->kf_un.kf_pts.kf_pts_dev_freebsd11 =
     kif->kf_un.kf_pts.kf_pts_dev;
 strlcpy(kif->kf_path, tty_devname(tp), sizeof(kif->kf_path));
 return (0);
}
