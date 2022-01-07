
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {scalar_t__ state; int n_alloc; int type; struct sfxge_intr_hdl* table; int * msix_res; int status; } ;
struct sfxge_softc {struct sfxge_intr intr; int dev; } ;
struct sfxge_intr_hdl {scalar_t__ eih_rid; int eih_res; } ;
typedef int efsys_mem_t ;
typedef int device_t ;


 int EFX_INTR_INVALID ;
 int KASSERT (int,char*) ;
 int M_SFXGE ;
 scalar_t__ SFXGE_INTR_INITIALIZED ;
 scalar_t__ SFXGE_INTR_UNINITIALIZED ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,scalar_t__,int ) ;
 int free (struct sfxge_intr_hdl*,int ) ;
 int pci_release_msi (int ) ;
 int sfxge_dma_free (int *) ;
 int sfxge_intr_teardown_msix (struct sfxge_softc*) ;

void
sfxge_intr_fini(struct sfxge_softc *sc)
{
 struct sfxge_intr_hdl *table;
 struct sfxge_intr *intr;
 efsys_mem_t *esmp;
 device_t dev;
 int i;

 dev = sc->dev;
 intr = &sc->intr;
 esmp = &intr->status;
 table = intr->table;

 KASSERT(intr->state == SFXGE_INTR_INITIALIZED,
     ("intr->state != SFXGE_INTR_INITIALIZED"));


 sfxge_dma_free(esmp);


 for (i = 0; i < intr->n_alloc; i++)
  bus_release_resource(dev, SYS_RES_IRQ,
      table[i].eih_rid, table[i].eih_res);

 if (table[0].eih_rid != 0)
  pci_release_msi(dev);

 if (intr->msix_res != ((void*)0))
  sfxge_intr_teardown_msix(sc);


 free(table, M_SFXGE);
 intr->table = ((void*)0);
 intr->n_alloc = 0;


 intr->type = EFX_INTR_INVALID;

 intr->state = SFXGE_INTR_UNINITIALIZED;
}
