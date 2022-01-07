
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid3_softc {TYPE_1__* sc_zones; } ;
typedef enum g_raid3_zones { ____Placeholder_g_raid3_zones } g_raid3_zones ;
struct TYPE_2__ {int sz_failed; int sz_requested; int sz_zone; } ;


 int G_RAID3_NUM_ZONES ;
 int M_RAID3 ;
 scalar_t__ g_raid3_use_malloc ;
 int g_raid3_zone (size_t) ;
 void* malloc (size_t,int ,int) ;
 void* uma_zalloc_arg (int ,TYPE_1__*,int) ;

__attribute__((used)) static void *
g_raid3_alloc(struct g_raid3_softc *sc, size_t size, int flags)
{
 void *ptr;
 enum g_raid3_zones zone;

 if (g_raid3_use_malloc ||
     (zone = g_raid3_zone(size)) == G_RAID3_NUM_ZONES)
  ptr = malloc(size, M_RAID3, flags);
 else {
  ptr = uma_zalloc_arg(sc->sc_zones[zone].sz_zone,
     &sc->sc_zones[zone], flags);
  sc->sc_zones[zone].sz_requested++;
  if (ptr == ((void*)0))
   sc->sc_zones[zone].sz_failed++;
 }
 return (ptr);
}
