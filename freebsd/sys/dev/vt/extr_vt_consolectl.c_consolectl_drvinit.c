
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_WHEEL ;
 int UID_ROOT ;
 int VTY_VT ;
 int consolectl_cdevsw ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int vty_enabled (int ) ;

__attribute__((used)) static void
consolectl_drvinit(void *unused)
{

 if (!vty_enabled(VTY_VT))
  return;
 make_dev(&consolectl_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
     "consolectl");
}
