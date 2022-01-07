
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmufreq_softc {int curfreq; } ;
struct cf_setting {int dev; int freq; } ;
typedef int device_t ;


 int EINVAL ;
 struct pmufreq_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pmufreq_get(device_t dev, struct cf_setting *set)
{
 struct pmufreq_softc *sc;

 if (set == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);

 set->freq = sc->curfreq;
 set->dev = dev;

 return (0);
}
