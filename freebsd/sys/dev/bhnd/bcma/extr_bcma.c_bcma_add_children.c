
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_erom_io {int dummy; } ;
struct bhnd_chipid {int dummy; } ;
struct bcma_erom {int dummy; } ;
struct bcma_devinfo {int dummy; } ;
struct bcma_corecfg {int dummy; } ;
typedef int * device_t ;
typedef int bhnd_erom_t ;


 int BCMA_EROM_RID ;
 int BHND_BUS_CHILD_ADDED (int *,int *) ;
 struct bhnd_chipid* BHND_BUS_GET_CHIPID (int *,int *) ;
 int * BUS_ADD_CHILD (int *,int ,int *,int) ;
 int ENODEV ;
 int ENOENT ;
 int ENXIO ;
 int bcma_erom_next_corecfg (struct bcma_erom*,struct bcma_corecfg**) ;
 int bcma_erom_parser ;
 int bcma_free_corecfg (struct bcma_corecfg*) ;
 int bcma_init_dinfo (int *,int *,struct bcma_devinfo*,struct bcma_corecfg*) ;
 int * bhnd_erom_alloc (int *,struct bhnd_chipid const*,struct bhnd_erom_io*) ;
 int bhnd_erom_free (int *) ;
 int bhnd_erom_io_fini (struct bhnd_erom_io*) ;
 struct bhnd_erom_io* bhnd_erom_iores_new (int *,int ) ;
 scalar_t__ bhnd_is_hw_disabled (int *) ;
 int device_delete_children (int *) ;
 int device_disable (int *) ;
 struct bcma_devinfo* device_get_ivars (int *) ;

int
bcma_add_children(device_t bus)
{
 bhnd_erom_t *erom;
 struct bcma_erom *bcma_erom;
 struct bhnd_erom_io *eio;
 const struct bhnd_chipid *cid;
 struct bcma_corecfg *corecfg;
 struct bcma_devinfo *dinfo;
 device_t child;
 int error;

 cid = BHND_BUS_GET_CHIPID(bus, bus);
 corecfg = ((void*)0);


 eio = bhnd_erom_iores_new(bus, BCMA_EROM_RID);
 erom = bhnd_erom_alloc(&bcma_erom_parser, cid, eio);
 if (erom == ((void*)0)) {
  bhnd_erom_io_fini(eio);
  return (ENODEV);
 }


 bcma_erom = (struct bcma_erom *)erom;
 while ((error = bcma_erom_next_corecfg(bcma_erom, &corecfg)) == 0) {

  child = BUS_ADD_CHILD(bus, 0, ((void*)0), -1);
  if (child == ((void*)0)) {
   error = ENXIO;
   goto cleanup;
  }


  dinfo = device_get_ivars(child);
  if ((error = bcma_init_dinfo(bus, child, dinfo, corecfg)))
   goto cleanup;


  corecfg = ((void*)0);



  if (bhnd_is_hw_disabled(child))
   device_disable(child);


  BHND_BUS_CHILD_ADDED(bus, child);
 }


 if (error == ENOENT)
  error = 0;

cleanup:
 bhnd_erom_free(erom);

 if (corecfg != ((void*)0))
  bcma_free_corecfg(corecfg);

 if (error)
  device_delete_children(bus);

 return (error);
}
