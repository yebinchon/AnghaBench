
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sndcard_func {int func; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int DELAY (int) ;
 int DV_F_DRQ_MASK ;
 int DV_F_DUAL_DMA ;
 int ENOMEM ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int RF_ACTIVE ;
 int SCF_MIDI ;
 int SCF_PCM ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 struct resource* bus_alloc_resource (int ,int ,int*,int,int,int,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_set_resource (int ,int ,int,int,int) ;
 int device_add_child (int ,char*,int) ;
 int device_get_flags (int ) ;
 int device_set_desc (int ,char*) ;
 int device_set_ivars (int ,struct sndcard_func*) ;
 int isa_get_port (int ) ;
 struct sndcard_func* malloc (int,int ,int) ;
 unsigned char port_rd (struct resource*,int) ;
 int port_wr (struct resource*,int,int) ;
 int printf (char*) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static int
gusisa_probe(device_t dev)
{
 device_t child;
 struct resource *res, *res2;
 int base, rid, rid2, s, flags;
 unsigned char val;

 base = isa_get_port(dev);
 flags = device_get_flags(dev);
 rid = 1;
 res = bus_alloc_resource(dev, SYS_RES_IOPORT, &rid, base + 0x100,
     base + 0x107, 8, RF_ACTIVE);

 if (res == ((void*)0))
  return ENXIO;

 res2 = ((void*)0);






 port_wr(res, 3, 0x4c);
 port_wr(res, 5, 0);
 DELAY(30 * 1000);

 port_wr(res, 3, 0x4c);
 port_wr(res, 5, 1);
 DELAY(30 * 1000);

 s = splhigh();



 port_wr(res, 3, 0x43);
 port_wr(res, 4, 0);
 port_wr(res, 5, 0);

 port_wr(res, 3, 0x44);
 port_wr(res, 4, 0);
 port_wr(res, 7, 0x55);



 port_wr(res, 3, 0x43);
 port_wr(res, 4, 0);
 port_wr(res, 5, 0);

 port_wr(res, 3, 0x44);
 port_wr(res, 4, 0);
 val = port_rd(res, 7);

 splx(s);

 if (val != 0x55)
  goto fail;

 rid2 = 0;
 res2 = bus_alloc_resource(dev, SYS_RES_IOPORT, &rid2, base, base, 1,
      RF_ACTIVE);

 if (res2 == ((void*)0))
  goto fail;

 s = splhigh();
 port_wr(res2, 0x0f, 0x20);
 val = port_rd(res2, 0x0f);
 splx(s);

 if (val == 0xff || (val & 0x06) == 0)
  val = 0;
 else {
  val = port_rd(res2, 0x506);
  if (val == 0xff)
   val = 0;
 }

 bus_release_resource(dev, SYS_RES_IOPORT, rid2, res2);
 bus_release_resource(dev, SYS_RES_IOPORT, rid, res);

 if (val >= 10) {
  struct sndcard_func *func;



  bus_set_resource(dev, SYS_RES_IOPORT, 2, base + 0x10c, 8);

  if (flags & DV_F_DUAL_DMA)
   bus_set_resource(dev, SYS_RES_DRQ, 1,
      flags & DV_F_DRQ_MASK, 1);



  func = malloc(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
  if (func == ((void*)0))
   return ENOMEM;
  func->func = SCF_MIDI;
  child = device_add_child(dev, "midi", -1);
  device_set_ivars(child, func);

  func = malloc(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
  if (func == ((void*)0))
   printf("xxx: gus pcm not attached, out of memory\n");
  else {
   func->func = SCF_PCM;
   child = device_add_child(dev, "pcm", -1);
   device_set_ivars(child, func);
  }
  device_set_desc(dev, "Gravis UltraSound MAX");
  return 0;
 } else {





  return ENXIO;
 }

fail:
 bus_release_resource(dev, SYS_RES_IOPORT, rid, res);
 return ENXIO;
}
