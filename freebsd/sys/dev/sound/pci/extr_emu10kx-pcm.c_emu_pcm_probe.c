
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 uintptr_t BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 int EMU_VAR_FUNC ;
 int EMU_VAR_ROUTE ;
 int ENXIO ;






 uintptr_t SCF_PCM ;
 int device_get_parent (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int
emu_pcm_probe(device_t dev)
{
 uintptr_t func, route, r;
 const char *rt;
 char buffer[255];

 r = BUS_READ_IVAR(device_get_parent(dev), dev, EMU_VAR_FUNC, &func);

 if (func != SCF_PCM)
  return (ENXIO);

 rt = "UNKNOWN";
 r = BUS_READ_IVAR(device_get_parent(dev), dev, EMU_VAR_ROUTE, &route);
 switch (route) {
 case 132:
  rt = "front";
  break;
 case 130:
  rt = "rear";
  break;
 case 133:
  rt = "center";
  break;
 case 128:
  rt = "subwoofer";
  break;
 case 129:
  rt = "side";
  break;
 case 131:
  rt = "multichannel recording";
  break;
 }

 snprintf(buffer, 255, "EMU10Kx DSP %s PCM interface", rt);
 device_set_desc_copy(dev, buffer);
 return (0);
}
