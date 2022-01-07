
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_kerneldump {int di; int length; scalar_t__ offset; } ;
struct g_consumer {int dummy; } ;
struct diocskerneldump_arg {scalar_t__ kda_index; } ;
struct cdev {int si_flags; struct g_consumer* si_drv2; } ;
typedef int kd ;


 scalar_t__ KDA_REMOVE ;
 int MPASS (int) ;
 int OFF_MAX ;
 int SI_DUMPDEV ;
 int devtoname (struct cdev*) ;
 int dumper_insert (int *,int ,struct diocskerneldump_arg*) ;
 int g_io_getattr (char*,struct g_consumer*,int*,struct g_kerneldump*) ;
 int memset (struct g_kerneldump*,int ,int) ;

__attribute__((used)) static int
g_dev_setdumpdev(struct cdev *dev, struct diocskerneldump_arg *kda)
{
 struct g_kerneldump kd;
 struct g_consumer *cp;
 int error, len;

 MPASS(dev != ((void*)0) && kda != ((void*)0));
 MPASS(kda->kda_index != KDA_REMOVE);

 cp = dev->si_drv2;
 len = sizeof(kd);
 memset(&kd, 0, len);
 kd.offset = 0;
 kd.length = OFF_MAX;
 error = g_io_getattr("GEOM::kerneldump", cp, &len, &kd);
 if (error != 0)
  return (error);

 error = dumper_insert(&kd.di, devtoname(dev), kda);
 if (error == 0)
  dev->si_flags |= SI_DUMPDEV;

 return (error);
}
