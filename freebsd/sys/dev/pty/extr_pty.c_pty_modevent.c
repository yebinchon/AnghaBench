
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int EVENTHANDLER_REGISTER (int ,int ,int ,int) ;
 int GID_WHEEL ;
 int MAKEDEV_ETERNAL_KLD ;



 int UID_ROOT ;
 int dev_clone ;
 int make_dev_credf (int ,int *,int ,int *,int ,int ,int,char*) ;
 int ptmx_cdevsw ;
 int pty_clone ;

__attribute__((used)) static int
pty_modevent(module_t mod, int type, void *data)
{

 switch(type) {
 case 130:
  EVENTHANDLER_REGISTER(dev_clone, pty_clone, 0, 1000);
  make_dev_credf(MAKEDEV_ETERNAL_KLD, &ptmx_cdevsw, 0, ((void*)0),
      UID_ROOT, GID_WHEEL, 0666, "ptmx");
  break;
 case 129:
  break;
 case 128:

  return (EBUSY);
 default:
  return (EOPNOTSUPP);
 }

 return (0);
}
