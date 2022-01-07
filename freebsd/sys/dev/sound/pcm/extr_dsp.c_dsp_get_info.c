
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snddev_info {int dummy; } ;
struct cdev {int dummy; } ;


 int PCMUNIT (struct cdev*) ;
 struct snddev_info* devclass_get_softc (int ,int ) ;
 int pcm_devclass ;

__attribute__((used)) static struct snddev_info *
dsp_get_info(struct cdev *dev)
{
 return (devclass_get_softc(pcm_devclass, PCMUNIT(dev)));
}
