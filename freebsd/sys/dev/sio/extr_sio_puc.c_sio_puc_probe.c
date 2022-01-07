
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_LOW_PRIORITY ;
 scalar_t__ BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 uintptr_t DEFAULT_RCLK ;
 int ENXIO ;
 int PUC_IVAR_CLOCK ;
 int PUC_IVAR_TYPE ;
 uintptr_t PUC_TYPE_SERIAL ;
 int device_get_parent (int ) ;
 int sioprobe (int ,int ,uintptr_t,int) ;

__attribute__((used)) static int
sio_puc_probe(device_t dev)
{
 device_t parent;
 uintptr_t rclk, type;
 int error;

 parent = device_get_parent(dev);

 if (BUS_READ_IVAR(parent, dev, PUC_IVAR_TYPE, &type))
  return (ENXIO);
 if (type != PUC_TYPE_SERIAL)
  return (ENXIO);

 if (BUS_READ_IVAR(parent, dev, PUC_IVAR_CLOCK, &rclk))
  rclk = DEFAULT_RCLK;

 error = sioprobe(dev, 0, rclk, 1);
 return ((error > 0) ? error : BUS_PROBE_LOW_PRIORITY);
}
