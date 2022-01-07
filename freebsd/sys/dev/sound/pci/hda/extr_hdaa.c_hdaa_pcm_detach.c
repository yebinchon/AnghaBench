
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_pcm_devinfo {scalar_t__ registered; } ;
typedef int device_t ;


 scalar_t__ device_get_ivars (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
hdaa_pcm_detach(device_t dev)
{
 struct hdaa_pcm_devinfo *pdevinfo =
     (struct hdaa_pcm_devinfo *)device_get_ivars(dev);
 int err;

 if (pdevinfo->registered > 0) {
  err = pcm_unregister(dev);
  if (err != 0)
   return (err);
 }

 return (0);
}
