
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int child_count; int ** child_list; } ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int free (int **,int ) ;
 int ** realloc (int **,int,int ,int ) ;

__attribute__((used)) static void
mmc_update_child_list(struct mmc_softc *sc)
{
 device_t child;
 int i, j;

 if (sc->child_count == 0) {
  free(sc->child_list, M_DEVBUF);
  return;
 }
 for (i = j = 0; i < sc->child_count; i++) {
  for (;;) {
   child = sc->child_list[j++];
   if (child != ((void*)0))
    break;
  }
  if (i != j)
   sc->child_list[i] = child;
 }
 sc->child_list = realloc(sc->child_list, sizeof(device_t) *
     sc->child_count, M_DEVBUF, M_WAITOK);
}
