
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sndcard_func {scalar_t__ func; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ SCF_MIDI ;
 struct sndcard_func* device_get_ivars (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
midicsa_probe(device_t dev)
{
 struct sndcard_func *func;



 func = device_get_ivars(dev);
 if (func == ((void*)0) || func->func != SCF_MIDI)
  return (ENXIO);

 device_set_desc(dev, "CS461x MIDI");
 return (0);
}
