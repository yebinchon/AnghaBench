
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sndcard_func {uintptr_t func; int * varinfo; } ;
struct emu_sc_info {uintptr_t is_emu10k1; uintptr_t mch_disabled; uintptr_t mch_rec; } ;
struct emu_pcminfo {uintptr_t route; } ;
typedef int device_t ;







 int ENOENT ;
 int ENOMEM ;
 struct sndcard_func* device_get_ivars (int ) ;
 struct emu_sc_info* device_get_softc (int ) ;

__attribute__((used)) static int
emu_read_ivar(device_t bus, device_t dev, int ivar_index, uintptr_t * result)
{
 struct sndcard_func *func = device_get_ivars(dev);
 struct emu_sc_info *sc = device_get_softc(bus);

 if (func==((void*)0))
  return (ENOMEM);
 if (sc == ((void*)0))
  return (ENOMEM);

 switch (ivar_index) {
 case 132:
  *result = func->func;
  break;
 case 128:
  if (func->varinfo == ((void*)0))
   return (ENOMEM);
  *result = ((struct emu_pcminfo *)func->varinfo)->route;
  break;
 case 131:
  *result = sc->is_emu10k1;
  break;
 case 130:
  *result = sc->mch_disabled;
  break;
 case 129:
  *result = sc->mch_rec;
  break;
 default:
  return (ENOENT);
 }

 return (0);
}
