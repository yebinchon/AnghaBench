
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dev_t ;


 scalar_t__ NODEV ;
 int S_IFCHR ;
 char* devname (scalar_t__,int ) ;

const char *
getdev(dev_t dev)
{
 static dev_t lastdev = (dev_t)-1;
 static const char *lastname;

 if (dev == NODEV)
  return ("__");
 if (dev == lastdev)
  return (lastname);
 lastdev = dev;
 lastname = devname(dev, S_IFCHR);
 return (lastname);
}
