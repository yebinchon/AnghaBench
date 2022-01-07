
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GCTL_PARAM_RD ;
 scalar_t__ GCTL_PARAM_WR ;
 int GID_OPERATOR ;
 int KASSERT (int,char*) ;
 int MAKEDEV_ETERNAL ;
 int PATH_GEOM_CTL ;
 int UID_ROOT ;
 scalar_t__ VM_PROT_READ ;
 scalar_t__ VM_PROT_WRITE ;
 int g_ctl_cdevsw ;
 int make_dev_credf (int ,int *,int ,int *,int ,int ,int,int ) ;

void
g_ctl_init(void)
{

 make_dev_credf(MAKEDEV_ETERNAL, &g_ctl_cdevsw, 0, ((void*)0),
     UID_ROOT, GID_OPERATOR, 0640, PATH_GEOM_CTL);
 KASSERT(GCTL_PARAM_RD == VM_PROT_READ,
  ("GCTL_PARAM_RD != VM_PROT_READ"));
 KASSERT(GCTL_PARAM_WR == VM_PROT_WRITE,
  ("GCTL_PARAM_WR != VM_PROT_WRITE"));
}
