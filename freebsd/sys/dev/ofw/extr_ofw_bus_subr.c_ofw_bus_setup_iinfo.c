
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_iinfo {int opi_addrc; scalar_t__ opi_imapsz; int opi_imapmsk; int opi_imap; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int addrc ;


 int OF_getencprop (int ,char*,int*,int) ;
 void* OF_getencprop_alloc (int ,char*,void**) ;
 int panic (char*) ;

void
ofw_bus_setup_iinfo(phandle_t node, struct ofw_bus_iinfo *ii, int intrsz)
{
 pcell_t addrc;
 int msksz;

 if (OF_getencprop(node, "#address-cells", &addrc, sizeof(addrc)) == -1)
  addrc = 2;
 ii->opi_addrc = addrc * sizeof(pcell_t);

 ii->opi_imapsz = OF_getencprop_alloc(node, "interrupt-map",
     (void **)&ii->opi_imap);
 if (ii->opi_imapsz > 0) {
  msksz = OF_getencprop_alloc(node, "interrupt-map-mask",
      (void **)&ii->opi_imapmsk);




  if (msksz != -1 && msksz != ii->opi_addrc + intrsz)
   panic("ofw_bus_setup_iinfo: bad interrupt-map-mask "
       "property!");
 }
}
