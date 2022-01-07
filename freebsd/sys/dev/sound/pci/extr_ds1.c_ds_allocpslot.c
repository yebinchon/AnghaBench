
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int pslotfree; struct pbank volatile** pbank; } ;
struct pbank {int dummy; } ;



__attribute__((used)) static volatile struct pbank *
ds_allocpslot(struct sc_info *sc)
{
 int slot;

 if (sc->pslotfree > 63)
  return ((void*)0);
 slot = sc->pslotfree++;
 return sc->pbank[slot * 2];
}
