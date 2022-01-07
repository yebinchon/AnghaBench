
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct tuntap_driver {int cdevsw; int clones; } ;
struct cdev {int dummy; } ;
typedef int devname ;


 int CRED_TO_VNET (struct ucred*) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int IF_MAXUNIT ;
 int PRIV_NET_IFCREATE ;
 int SPECNAMELEN ;
 int TUN_L2 ;
 int clone_create (int *,int *,int*,struct cdev**,int ) ;
 int if_clone_create (char*,int,int *) ;
 scalar_t__ priv_check_cred (struct ucred*,int ) ;
 int snprintf (char*,int,char*,char*,int) ;
 scalar_t__ tap_allow_uopen ;
 scalar_t__ tapdclone ;
 int tun_create_device (struct tuntap_driver*,int,struct ucred*,struct cdev**,char*) ;
 scalar_t__ tundclone ;
 struct tuntap_driver* tuntap_driver_from_flags (int) ;
 scalar_t__ tuntap_name2info (char*,int*,int*) ;

__attribute__((used)) static void
tunclone(void *arg, struct ucred *cred, char *name, int namelen,
    struct cdev **dev)
{
 char devname[SPECNAMELEN + 1];
 struct tuntap_driver *drv;
 int append_unit, i, u, tunflags;
 bool mayclone;

 if (*dev != ((void*)0))
  return;

 tunflags = 0;
 CURVNET_SET(CRED_TO_VNET(cred));
 if (tuntap_name2info(name, &u, &tunflags) != 0)
  goto out;

 if (u != -1 && u > IF_MAXUNIT)
  goto out;

 mayclone = priv_check_cred(cred, PRIV_NET_IFCREATE) == 0;
 if ((tunflags & TUN_L2) != 0) {

  mayclone = (mayclone || tap_allow_uopen) && tapdclone;
 } else {
  mayclone = mayclone && tundclone;
 }





 if (!mayclone)
  goto out;

 if (u == -1)
  append_unit = 1;
 else
  append_unit = 0;

 drv = tuntap_driver_from_flags(tunflags);
 if (drv == ((void*)0))
  goto out;


 i = clone_create(&drv->clones, &drv->cdevsw, &u, dev, 0);
 if (i) {
  if (append_unit) {
   namelen = snprintf(devname, sizeof(devname), "%s%d",
       name, u);
   name = devname;
  }

  i = tun_create_device(drv, u, cred, dev, name);
 }
 if (i == 0)
  if_clone_create(name, namelen, ((void*)0));
out:
 CURVNET_RESTORE();
}
