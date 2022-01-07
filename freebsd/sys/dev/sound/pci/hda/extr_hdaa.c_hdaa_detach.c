
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_devinfo {int widget; int poll_jack; scalar_t__ poll_ival; } ;
typedef int device_t ;


 int M_HDAA ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int device_delete_children (int ) ;
 struct hdaa_devinfo* device_get_softc (int ) ;
 int free (int ,int ) ;
 int hdaa_lock (struct hdaa_devinfo*) ;
 int hdaa_unconfigure (int ) ;
 int hdaa_unlock (struct hdaa_devinfo*) ;

__attribute__((used)) static int
hdaa_detach(device_t dev)
{
 struct hdaa_devinfo *devinfo = device_get_softc(dev);
 int error;

 if ((error = device_delete_children(dev)) != 0)
  return (error);

 hdaa_lock(devinfo);
 hdaa_unconfigure(dev);
 devinfo->poll_ival = 0;
 callout_stop(&devinfo->poll_jack);
 hdaa_unlock(devinfo);
 callout_drain(&devinfo->poll_jack);

 free(devinfo->widget, M_HDAA);
 return (0);
}
