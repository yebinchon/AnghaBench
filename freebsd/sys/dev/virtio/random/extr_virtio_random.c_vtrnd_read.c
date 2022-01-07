
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtrnd_softc {int dummy; } ;


 struct vtrnd_softc* g_vtrnd_softc ;
 int vtrnd_harvest (struct vtrnd_softc*,void*,size_t*) ;

__attribute__((used)) static unsigned
vtrnd_read(void *buf, unsigned usz)
{
 struct vtrnd_softc *sc;
 size_t sz;
 int error;

 sc = g_vtrnd_softc;
 if (sc == ((void*)0))
  return (0);

 sz = usz;
 error = vtrnd_harvest(sc, buf, &sz);
 if (error != 0)
  return (0);

 return (sz);
}
