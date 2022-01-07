
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int * eh; } ;
typedef int device_t ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int FALSE ;
 int MPT_LOCK_DESTROY (struct mpt_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int mpt_detach (struct mpt_softc*) ;
 int mpt_disable_ints (struct mpt_softc*) ;
 int mpt_dma_mem_free (struct mpt_softc*) ;
 int mpt_free_bus_resources (struct mpt_softc*) ;
 int mpt_raid_free_mem (struct mpt_softc*) ;
 int mpt_reset (struct mpt_softc*,int ) ;
 int mpt_unlink_peer (struct mpt_softc*) ;
 int shutdown_post_sync ;

__attribute__((used)) static int
mpt_pci_detach(device_t dev)
{
 struct mpt_softc *mpt;

 mpt = (struct mpt_softc*)device_get_softc(dev);

 if (mpt) {
  mpt_disable_ints(mpt);
  mpt_detach(mpt);
  mpt_reset(mpt, FALSE);
  mpt_raid_free_mem(mpt);
  mpt_dma_mem_free(mpt);
  mpt_free_bus_resources(mpt);



  if (mpt->eh != ((void*)0)) {
                        EVENTHANDLER_DEREGISTER(shutdown_post_sync, mpt->eh);
  }
  MPT_LOCK_DESTROY(mpt);
 }
 return(0);
}
