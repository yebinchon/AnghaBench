
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_rule {int dr_icond; int dr_dswflags; } ;
struct devfs_mount {int dummy; } ;
struct devfs_krule {struct devfs_rule dk_rule; } ;
struct devfs_dirent {int dummy; } ;
struct cdevsw {int d_flags; } ;
struct cdev {int dummy; } ;


 int DRC_DSWFLAGS ;
 int DRC_PATHPTRN ;
 struct cdevsw* dev_refthread (struct cdev*,int*) ;
 int dev_relthread (struct cdev*,int) ;
 struct cdev* devfs_rule_getdev (struct devfs_dirent*) ;
 int devfs_rule_matchpath (struct devfs_krule*,struct devfs_mount*,struct devfs_dirent*) ;

__attribute__((used)) static int
devfs_rule_match(struct devfs_krule *dk, struct devfs_mount *dm,
    struct devfs_dirent *de)
{
 struct devfs_rule *dr = &dk->dk_rule;
 struct cdev *dev;
 struct cdevsw *dsw;
 int ref;

 dev = devfs_rule_getdev(de);
 if (dr->dr_icond & DRC_DSWFLAGS) {
  if (dev == ((void*)0))
   return (0);
  dsw = dev_refthread(dev, &ref);
  if (dsw == ((void*)0))
   return (0);
  if ((dsw->d_flags & dr->dr_dswflags) == 0) {
   dev_relthread(dev, ref);
   return (0);
  }
  dev_relthread(dev, ref);
 }
 if (dr->dr_icond & DRC_PATHPTRN)
  if (!devfs_rule_matchpath(dk, dm, de))
   return (0);

 return (1);
}
