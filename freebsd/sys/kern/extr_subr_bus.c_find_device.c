
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devreq {int dr_name; } ;
typedef int * device_t ;


 int EINVAL ;
 int ENOENT ;
 int EVENTHANDLER_DIRECT_INVOKE (int ,int ,int **) ;
 int dev_lookup ;
 int * device_lookup_by_name (int ) ;
 int * memchr (int ,char,int) ;

__attribute__((used)) static int
find_device(struct devreq *req, device_t *devp)
{
 device_t dev;




 if (memchr(req->dr_name, '\0', sizeof(req->dr_name)) == ((void*)0))
  return (EINVAL);





 dev = device_lookup_by_name(req->dr_name);
 if (dev != ((void*)0)) {
  *devp = dev;
  return (0);
 }


 dev = ((void*)0);
 EVENTHANDLER_DIRECT_INVOKE(dev_lookup, req->dr_name, &dev);
 if (dev == ((void*)0))
  return (ENOENT);
 *devp = dev;
 return (0);
}
