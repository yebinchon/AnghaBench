
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ board_type; } ;


 int BUS_PROBE_NOWILDCARD ;
 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 int ENXIO ;
 TYPE_1__* cvmx_sysinfo_get () ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 int panic (char*) ;

__attribute__((used)) static int cf_probe (device_t dev)
{
     if (cvmx_sysinfo_get()->board_type == CVMX_BOARD_TYPE_SIM)
  return (ENXIO);

 if (device_get_unit(dev) != 0) {
                panic("can't attach more devices\n");
        }

        device_set_desc(dev, "Octeon Compact Flash Driver");

 return (BUS_PROBE_NOWILDCARD);
}
