
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;
typedef int device_t ;


 scalar_t__ device_get_softc (int ) ;
 int mpt_shutdown (struct mpt_softc*) ;

__attribute__((used)) static int
mpt_pci_shutdown(device_t dev)
{
 struct mpt_softc *mpt;

 mpt = (struct mpt_softc *)device_get_softc(dev);
 if (mpt)
  return (mpt_shutdown(mpt));
 return(0);
}
