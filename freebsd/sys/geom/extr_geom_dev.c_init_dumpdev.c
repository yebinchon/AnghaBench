
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_consumer {int dummy; } ;
struct diocskerneldump_arg {int kda_index; } ;
struct cdev {scalar_t__ si_drv2; } ;
typedef int kda ;


 int KDA_APPEND ;
 int bzero (struct diocskerneldump_arg*,int) ;
 char* devtoname (struct cdev*) ;
 int * dumpdev ;
 int freeenv (int *) ;
 int g_access (struct g_consumer*,int,int ,int ) ;
 int g_dev_setdumpdev (struct cdev*,struct diocskerneldump_arg*) ;
 scalar_t__ strcmp (char const*,int *) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (int *,char const*,size_t) ;

__attribute__((used)) static int
init_dumpdev(struct cdev *dev)
{
 struct diocskerneldump_arg kda;
 struct g_consumer *cp;
 const char *devprefix = "/dev/", *devname;
 int error;
 size_t len;

 bzero(&kda, sizeof(kda));
 kda.kda_index = KDA_APPEND;

 if (dumpdev == ((void*)0))
  return (0);

 len = strlen(devprefix);
 devname = devtoname(dev);
 if (strcmp(devname, dumpdev) != 0 &&
    (strncmp(dumpdev, devprefix, len) != 0 ||
     strcmp(devname, dumpdev + len) != 0))
  return (0);

 cp = (struct g_consumer *)dev->si_drv2;
 error = g_access(cp, 1, 0, 0);
 if (error != 0)
  return (error);

 error = g_dev_setdumpdev(dev, &kda);
 if (error == 0) {
  freeenv(dumpdev);
  dumpdev = ((void*)0);
 }

 (void)g_access(cp, -1, 0, 0);

 return (error);
}
