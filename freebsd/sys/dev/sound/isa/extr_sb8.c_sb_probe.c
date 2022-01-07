
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
 int device_set_desc_copy (int ,char*) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static int
sb_probe(device_t dev)
{
     char buf[64];
 uintptr_t func, ver, r, f;


 r = BUS_READ_IVAR(device_get_parent(dev), dev, 0, &func);
 if (func != SCF_PCM)
  return (ENXIO);

 r = BUS_READ_IVAR(device_get_parent(dev), dev, 1, &ver);
 f = (ver & 0xffff0000) >> 16;
 ver &= 0x0000ffff;
 if ((f & BD_F_ESS) || (ver >= 0x400))
  return (ENXIO);

 snprintf(buf, sizeof buf, "SB DSP %d.%02d", (int) ver >> 8, (int) ver & 0xff);

     device_set_desc_copy(dev, buf);

 return 0;
}
