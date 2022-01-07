
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;


 int ENXIO ;
 int MPT_LOCK (struct mpt_softc*) ;
 scalar_t__ MPT_OK ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int mpt_enable_ints (struct mpt_softc*) ;
 int mpt_intr (struct mpt_softc*) ;
 int mpt_prt (struct mpt_softc*,char*) ;
 int mpt_send_event_request (struct mpt_softc*,int) ;
 scalar_t__ mpt_send_port_enable (struct mpt_softc*,int ) ;

__attribute__((used)) static int
mpt_core_enable(struct mpt_softc *mpt)
{






 MPT_LOCK(mpt);






 mpt_send_event_request(mpt, 1);







 mpt_intr(mpt);




 mpt_enable_ints(mpt);







 mpt_intr(mpt);




 if (mpt_send_port_enable(mpt, 0) != MPT_OK) {
  mpt_prt(mpt, "failed to enable port 0\n");
  MPT_UNLOCK(mpt);
  return (ENXIO);
 }
 MPT_UNLOCK(mpt);
 return (0);
}
