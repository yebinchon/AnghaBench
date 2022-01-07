
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 uintptr_t BD_F_ESS ;
 uintptr_t BUS_READ_IVAR (int ,int ,int,uintptr_t*) ;
 int ENXIO ;
 uintptr_t SCF_PCM ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
ess_probe(device_t dev)
{
 uintptr_t func, ver, r, f;


 r = BUS_READ_IVAR(device_get_parent(dev), dev, 0, &func);
 if (func != SCF_PCM)
  return (ENXIO);

 r = BUS_READ_IVAR(device_get_parent(dev), dev, 1, &ver);
 f = (ver & 0xffff0000) >> 16;
 if (!(f & BD_F_ESS))
  return (ENXIO);

     device_set_desc(dev, "ESS 18xx DSP");

 return 0;
}
