
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sndcard_func {scalar_t__ func; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ SCF_PCM ;
 struct sndcard_func* device_get_ivars (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
pcmcsa_probe(device_t dev)
{
 char *s;
 struct sndcard_func *func;



 func = device_get_ivars(dev);
 if (func == ((void*)0) || func->func != SCF_PCM)
  return (ENXIO);

 s = "CS461x PCM Audio";

 device_set_desc(dev, s);
 return (0);
}
