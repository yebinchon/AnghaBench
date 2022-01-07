
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct simplebus_softc {int nranges; int acells; int scells; TYPE_1__* ranges; } ;
typedef int ssize_t ;
typedef int phandle_t ;
typedef int host_address_cells ;
typedef int cell_t ;
struct TYPE_2__ {int bus; int host; int size; } ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int OF_getencprop (int ,char*,int*,int) ;
 int OF_getproplen (int ,char*) ;
 int OF_parent (int ) ;
 int OF_searchencprop (int ,char*,int*,int) ;
 int free (int*,int ) ;
 void* malloc (int,int ,int ) ;

__attribute__((used)) static int
fman_fill_ranges(phandle_t node, struct simplebus_softc *sc)
{
 int host_address_cells;
 cell_t *base_ranges;
 ssize_t nbase_ranges;
 int err;
 int i, j, k;

 err = OF_searchencprop(OF_parent(node), "#address-cells",
     &host_address_cells, sizeof(host_address_cells));
 if (err <= 0)
  return (-1);

 nbase_ranges = OF_getproplen(node, "ranges");
 if (nbase_ranges < 0)
  return (-1);
 sc->nranges = nbase_ranges / sizeof(cell_t) /
     (sc->acells + host_address_cells + sc->scells);
 if (sc->nranges == 0)
  return (0);

 sc->ranges = malloc(sc->nranges * sizeof(sc->ranges[0]),
     M_DEVBUF, M_WAITOK);
 base_ranges = malloc(nbase_ranges, M_DEVBUF, M_WAITOK);
 OF_getencprop(node, "ranges", base_ranges, nbase_ranges);

 for (i = 0, j = 0; i < sc->nranges; i++) {
  sc->ranges[i].bus = 0;
  for (k = 0; k < sc->acells; k++) {
   sc->ranges[i].bus <<= 32;
   sc->ranges[i].bus |= base_ranges[j++];
  }
  sc->ranges[i].host = 0;
  for (k = 0; k < host_address_cells; k++) {
   sc->ranges[i].host <<= 32;
   sc->ranges[i].host |= base_ranges[j++];
  }
  sc->ranges[i].size = 0;
  for (k = 0; k < sc->scells; k++) {
   sc->ranges[i].size <<= 32;
   sc->ranges[i].size |= base_ranges[j++];
  }
 }

 free(base_ranges, M_DEVBUF);
 return (sc->nranges);
}
