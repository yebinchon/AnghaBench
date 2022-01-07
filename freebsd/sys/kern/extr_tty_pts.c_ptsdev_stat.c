
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct tty {struct cdev* t_dev; } ;
struct thread {int dummy; } ;
struct stat {int st_mode; int st_gid; int st_uid; int st_mtim; int st_ctim; int st_atim; int st_rdev; int st_ino; } ;
struct pts_softc {int * pts_cdev; } ;
struct file {struct tty* f_data; } ;
struct cdev {int si_mode; int si_gid; int si_uid; int si_mtime; int si_ctime; int si_atime; } ;


 int S_IFCHR ;
 int bzero (struct stat*,int) ;
 int dev2udev (int *) ;
 struct pts_softc* tty_softc (struct tty*) ;
 int tty_udev (struct tty*) ;

__attribute__((used)) static int
ptsdev_stat(struct file *fp, struct stat *sb, struct ucred *active_cred,
    struct thread *td)
{
 struct tty *tp = fp->f_data;



 struct cdev *dev = tp->t_dev;
 bzero(sb, sizeof *sb);





  sb->st_ino = sb->st_rdev = tty_udev(tp);

 sb->st_atim = dev->si_atime;
 sb->st_ctim = dev->si_ctime;
 sb->st_mtim = dev->si_mtime;
 sb->st_uid = dev->si_uid;
 sb->st_gid = dev->si_gid;
 sb->st_mode = dev->si_mode | S_IFCHR;

 return (0);
}
