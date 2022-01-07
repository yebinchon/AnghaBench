
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcifront_device {int unit; } ;
typedef int device_t ;


 int BUS_PROBE_NOWILDCARD ;
 int DPRINTF (char*,int ) ;
 scalar_t__ device_get_ivars (int ) ;

__attribute__((used)) static int
xpcife_probe(device_t dev)
{




 return (BUS_PROBE_NOWILDCARD);
}
