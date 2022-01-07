
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;


 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int mpt_intr (struct mpt_softc*) ;

__attribute__((used)) static void
mpt_pci_intr(void *arg)
{
 struct mpt_softc *mpt;

 mpt = (struct mpt_softc *)arg;
 MPT_LOCK(mpt);
 mpt_intr(mpt);
 MPT_UNLOCK(mpt);
}
