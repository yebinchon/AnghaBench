
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int hio; int (* hw_cb ) (int ,int *,int ,int ,int ,TYPE_1__*) ;} ;
typedef TYPE_1__ ocs_io_t ;
typedef int ocs_hw_t ;
typedef int (* ocs_hw_done_t ) (int ,int *,int ,int ,int ,TYPE_1__*) ;
typedef int int32_t ;


 int SLI4_FC_WCQE_STATUS_DISPATCH_ERROR ;

__attribute__((used)) static int32_t
ocs_scsi_check_pending_async_cb(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_io_t *io = arg;

 if (io != ((void*)0)) {
  if (io->hw_cb != ((void*)0)) {
   ocs_hw_done_t cb = io->hw_cb;

   io->hw_cb = ((void*)0);
   cb(io->hio, ((void*)0), 0, SLI4_FC_WCQE_STATUS_DISPATCH_ERROR, 0, io);
  }
 }
 return 0;
}
