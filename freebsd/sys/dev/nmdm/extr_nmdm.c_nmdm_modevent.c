
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;
typedef int * eventhandler_tag ;


 int EBUSY ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int * EVENTHANDLER_REGISTER (int ,int ,int ,int) ;



 int dev_clone ;
 int nmdm_clone ;
 int nmdm_count ;

__attribute__((used)) static int
nmdm_modevent(module_t mod, int type, void *data)
{
 static eventhandler_tag tag;

        switch(type) {
        case 130:
  tag = EVENTHANDLER_REGISTER(dev_clone, nmdm_clone, 0, 1000);
  if (tag == ((void*)0))
   return (ENOMEM);
  break;

 case 129:
  break;

 case 128:
  if (nmdm_count != 0)
   return (EBUSY);
  EVENTHANDLER_DEREGISTER(dev_clone, tag);
  break;

 default:
  return (EOPNOTSUPP);
 }

 return (0);
}
