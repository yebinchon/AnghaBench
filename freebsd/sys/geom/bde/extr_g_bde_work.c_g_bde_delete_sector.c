
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_bde_softc {int nsect; } ;
struct g_bde_sector {struct g_bde_sector* data; scalar_t__ malloc; } ;


 int M_GBDE ;
 int free (struct g_bde_sector*,int ) ;
 int g_bde_nsect ;

__attribute__((used)) static void
g_bde_delete_sector(struct g_bde_softc *sc, struct g_bde_sector *sp)
{

 g_bde_nsect--;
 sc->nsect--;
 if (sp->malloc)
  free(sp->data, M_GBDE);
 free(sp, M_GBDE);
}
