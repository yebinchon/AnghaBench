
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cdev {int dummy; } ;
typedef int * device_t ;


 int PCMUNIT (struct cdev*) ;
 int * devclass_get_device (int ,int ) ;
 int pcm_devclass ;
 int pcm_setflags (int *,int ) ;

__attribute__((used)) static void
dsp_set_flags(struct cdev *dev, uint32_t flags)
{
 device_t bdev;

 bdev = devclass_get_device(pcm_devclass, PCMUNIT(dev));

 if (bdev != ((void*)0))
  pcm_setflags(bdev, flags);
}
