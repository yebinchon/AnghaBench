
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int path; int request_timeout_list; } ;


 int AC_BUS_RESET ;
 int MPI_IOCSTATUS_INVALID_STATE ;
 int mpt_complete_request_chain (struct mpt_softc*,int *,int ) ;
 int xpt_async (int ,int ,int *) ;

__attribute__((used)) static void
mpt_cam_ioc_reset(struct mpt_softc *mpt, int type)
{






 mpt_complete_request_chain(mpt, &mpt->request_timeout_list,
       MPI_IOCSTATUS_INVALID_STATE);
 xpt_async(AC_BUS_RESET, mpt->path, ((void*)0));
}
