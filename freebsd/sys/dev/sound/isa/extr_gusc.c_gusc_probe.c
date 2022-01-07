
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sndcard_func {int func; } ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int ISA_PNP_PROBE (int ,int ,int ) ;



 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SCF_MIDI ;
 int SCF_PCM ;
 int SCF_SYNTH ;
 int device_add_child (int ,char*,int) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int device_set_ivars (int ,struct sndcard_func*) ;
 int gusc_ids ;
 int gusisa_probe (int ) ;
 int isa_get_logicalid (int ) ;
 struct sndcard_func* malloc (int,int ,int) ;

__attribute__((used)) static int
gusc_probe(device_t dev)
{
 device_t child;
 u_int32_t logical_id;
 char *s;
 struct sndcard_func *func;
 int ret;

 logical_id = isa_get_logicalid(dev);
 s = ((void*)0);


 if (logical_id != 0 && (ret = ISA_PNP_PROBE(device_get_parent(dev), dev, gusc_ids)) != 0)
  return (ret);
 else {
  if (logical_id == 0)
   return gusisa_probe(dev);
 }

 switch (logical_id) {
 case 128:
  s = "Gravis UltraSound Plug & Play PCM";
  func = malloc(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
  if (func == ((void*)0))
   return (ENOMEM);
  func->func = SCF_PCM;
  child = device_add_child(dev, "pcm", -1);
  device_set_ivars(child, func);
  break;
 case 129:
  s = "Gravis UltraSound Plug & Play OPL";
  func = malloc(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
  if (func == ((void*)0))
   return (ENOMEM);
  func->func = SCF_SYNTH;
  child = device_add_child(dev, "midi", -1);
  device_set_ivars(child, func);
  break;
 case 130:
  s = "Gravis UltraSound Plug & Play MIDI";
  func = malloc(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
  if (func == ((void*)0))
   return (ENOMEM);
  func->func = SCF_MIDI;
  child = device_add_child(dev, "midi", -1);
  device_set_ivars(child, func);
  break;
 }

 if (s != ((void*)0)) {
  device_set_desc(dev, s);
  return (0);
 }

 return (ENXIO);
}
