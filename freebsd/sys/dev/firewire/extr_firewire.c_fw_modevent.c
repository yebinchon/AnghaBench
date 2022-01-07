
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;
typedef int * eventhandler_tag ;


 int EOPNOTSUPP ;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int * EVENTHANDLER_REGISTER (int ,int ,int ,int) ;



 int dev_clone ;
 int fwdev_clone ;

__attribute__((used)) static int
fw_modevent(module_t mode, int type, void *data)
{
 int err = 0;
 static eventhandler_tag fwdev_ehtag = ((void*)0);

 switch (type) {
 case 130:
  fwdev_ehtag = EVENTHANDLER_REGISTER(dev_clone,
      fwdev_clone, 0, 1000);
  break;
 case 128:
  if (fwdev_ehtag != ((void*)0))
   EVENTHANDLER_DEREGISTER(dev_clone, fwdev_ehtag);
  break;
 case 129:
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (err);
}
