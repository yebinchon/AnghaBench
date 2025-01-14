
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct resource {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int ISA_PNP_PROBE (int ,int ,int ) ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 struct resource* bus_alloc_resource_anywhere (int ,int ,int*,int,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int isa_get_logicalid (int ) ;
 int isa_get_vendorid (int ) ;
 int sb_identify_board (struct resource*) ;
 scalar_t__ sb_reset_dsp (struct resource*) ;
 int sbc_ids ;

__attribute__((used)) static int
sbc_probe(device_t dev)
{
 char *s = ((void*)0);
 u_int32_t lid, vid;

 lid = isa_get_logicalid(dev);
 vid = isa_get_vendorid(dev);
 if (lid) {
  if (lid == 0x01000000 && vid != 0x01009305)
   return ENXIO;

  return ISA_PNP_PROBE(device_get_parent(dev), dev, sbc_ids);
 } else {
  int rid = 0, ver;
      struct resource *io;

  io = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &rid,
       16, RF_ACTIVE);
  if (!io) goto bad;
      if (sb_reset_dsp(io)) goto bad2;
  ver = sb_identify_board(io);
  if (ver == 0) goto bad2;
  switch ((ver & 0x00000f00) >> 8) {
  case 1:
   device_set_desc(dev, "SoundBlaster 1.0 (not supported)");
   s = ((void*)0);
   break;

  case 2:
   s = "SoundBlaster 2.0";
   break;

  case 3:
   s = (ver & 0x0000f000)? "ESS 488" : "SoundBlaster Pro";
   break;

  case 4:
   s = "SoundBlaster 16";
   break;

  case 5:
   s = (ver & 0x00000008)? "ESS 688" : "ESS 1688";
   break;
       }
  if (s) device_set_desc(dev, s);
bad2: bus_release_resource(dev, SYS_RES_IOPORT, rid, io);
bad: return s? 0 : ENXIO;
 }
}
