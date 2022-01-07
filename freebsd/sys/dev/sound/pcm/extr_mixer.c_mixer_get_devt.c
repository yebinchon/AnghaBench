
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {struct cdev* mixer_dev; } ;
struct cdev {int dummy; } ;
typedef int device_t ;


 struct snddev_info* device_get_softc (int ) ;

__attribute__((used)) static struct cdev *
mixer_get_devt(device_t dev)
{
 struct snddev_info *snddev;

 snddev = device_get_softc(dev);

 return snddev->mixer_dev;
}
