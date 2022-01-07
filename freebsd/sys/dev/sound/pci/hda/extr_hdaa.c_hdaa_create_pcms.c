
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_pcm_devinfo {int dev; } ;
struct hdaa_devinfo {int num_devs; int dev; struct hdaa_pcm_devinfo* devs; } ;


 int device_add_child (int ,char*,int) ;
 int device_set_ivars (int ,void*) ;

__attribute__((used)) static void
hdaa_create_pcms(struct hdaa_devinfo *devinfo)
{
 int i;

 for (i = 0; i < devinfo->num_devs; i++) {
  struct hdaa_pcm_devinfo *pdevinfo = &devinfo->devs[i];

  pdevinfo->dev = device_add_child(devinfo->dev, "pcm", -1);
  device_set_ivars(pdevinfo->dev, (void *)pdevinfo);
 }
}
