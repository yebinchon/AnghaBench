
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_NOWILDCARD ;
 int SC_AUTODETECT_KBD ;
 int device_get_flags (int ) ;
 int device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 int sc_probe_unit (int ,int) ;

__attribute__((used)) static int
ofwfb_scprobe(device_t dev)
{
 int error;

 device_set_desc(dev, "System console");

 error = sc_probe_unit(device_get_unit(dev),
     device_get_flags(dev) | SC_AUTODETECT_KBD);
 if (error != 0)
  return (error);


 return (BUS_PROBE_NOWILDCARD);
}
