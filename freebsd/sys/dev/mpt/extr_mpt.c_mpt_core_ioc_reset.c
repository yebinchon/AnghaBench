
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int request_pending_list; } ;


 int MPI_IOCSTATUS_INVALID_STATE ;
 int mpt_complete_request_chain (struct mpt_softc*,int *,int ) ;

__attribute__((used)) static void
mpt_core_ioc_reset(struct mpt_softc *mpt, int type)
{





 mpt_complete_request_chain(mpt, &mpt->request_pending_list,
       MPI_IOCSTATUS_INVALID_STATE);
}
