
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_pcm_devinfo {size_t playas; size_t recas; } ;
struct hdaa_devinfo {struct hdaa_audio_as* as; } ;
struct hdaa_audio_as {scalar_t__* pins; } ;
typedef int device_t ;


 scalar_t__ device_get_ivars (int ) ;
 struct hdaa_devinfo* device_get_softc (int ) ;
 scalar_t__ snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int
hdaa_child_location_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 struct hdaa_devinfo *devinfo = device_get_softc(dev);
 struct hdaa_pcm_devinfo *pdevinfo =
     (struct hdaa_pcm_devinfo *)device_get_ivars(child);
 struct hdaa_audio_as *as;
 int first = 1, i, len = 0;

 len += snprintf(buf + len, buflen - len, "nid=");
 if (pdevinfo->playas >= 0) {
  as = &devinfo->as[pdevinfo->playas];
  for (i = 0; i < 16; i++) {
   if (as->pins[i] <= 0)
    continue;
   len += snprintf(buf + len, buflen - len,
       "%s%d", first ? "" : ",", as->pins[i]);
   first = 0;
  }
 }
 if (pdevinfo->recas >= 0) {
  as = &devinfo->as[pdevinfo->recas];
  for (i = 0; i < 16; i++) {
   if (as->pins[i] <= 0)
    continue;
   len += snprintf(buf + len, buflen - len,
       "%s%d", first ? "" : ",", as->pins[i]);
   first = 0;
  }
 }
 return (0);
}
