
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_pcm_devinfo {size_t playas; size_t recas; } ;
struct hdaa_devinfo {struct hdaa_audio_as* as; } ;
struct hdaa_audio_as {scalar_t__* pins; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 scalar_t__ device_get_ivars (int ) ;
 struct hdaa_devinfo* device_get_softc (int ) ;
 scalar_t__ printf (char*,...) ;

__attribute__((used)) static int
hdaa_print_child(device_t dev, device_t child)
{
 struct hdaa_devinfo *devinfo = device_get_softc(dev);
 struct hdaa_pcm_devinfo *pdevinfo =
     (struct hdaa_pcm_devinfo *)device_get_ivars(child);
 struct hdaa_audio_as *as;
 int retval, first = 1, i;

 retval = bus_print_child_header(dev, child);
 retval += printf(" at nid ");
 if (pdevinfo->playas >= 0) {
  as = &devinfo->as[pdevinfo->playas];
  for (i = 0; i < 16; i++) {
   if (as->pins[i] <= 0)
    continue;
   retval += printf("%s%d", first ? "" : ",", as->pins[i]);
   first = 0;
  }
 }
 if (pdevinfo->recas >= 0) {
  if (pdevinfo->playas >= 0) {
   retval += printf(" and ");
   first = 1;
  }
  as = &devinfo->as[pdevinfo->recas];
  for (i = 0; i < 16; i++) {
   if (as->pins[i] <= 0)
    continue;
   retval += printf("%s%d", first ? "" : ",", as->pins[i]);
   first = 0;
  }
 }
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
