
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 int dpms_get_supported_states (int*) ;

__attribute__((used)) static int
dpms_probe(device_t dev)
{
 int error, states;

 error = dpms_get_supported_states(&states);
 if (error)
  return (error);
 device_set_desc(dev, "DPMS suspend/resume");
 device_quiet(dev);
 return (BUS_PROBE_DEFAULT);
}
