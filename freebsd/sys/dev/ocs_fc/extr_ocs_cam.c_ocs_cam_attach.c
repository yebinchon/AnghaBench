
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct cam_devq {int dummy; } ;
struct TYPE_7__ {int num_vports; int sim_lock; struct cam_devq* devq; scalar_t__ io_in_use; int io_high_watermark; int dev; } ;
typedef TYPE_1__ ocs_t ;
typedef int int32_t ;


 int MTX_DEF ;
 int OCS_SCSI_MAX_IOS ;
 struct cam_devq* cam_simq_alloc (int ) ;
 int cam_simq_free (struct cam_devq*) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ mtx_initialized (int *) ;
 scalar_t__ ocs_attach_port (TYPE_1__*,int) ;
 int ocs_detach_port (TYPE_1__*,int) ;
 int ocs_log_err (TYPE_1__*,char*,int) ;
 int ocs_scsi_get_property (TYPE_1__*,int ) ;

int32_t
ocs_cam_attach(ocs_t *ocs)
{
 struct cam_devq *devq = ((void*)0);
 int i = 0;
 uint32_t max_io = ocs_scsi_get_property(ocs, OCS_SCSI_MAX_IOS);

 if (((void*)0) == (devq = cam_simq_alloc(max_io))) {
  device_printf(ocs->dev, "Can't allocate SIMQ\n");
  return -1;
 }

 ocs->devq = devq;

 if (mtx_initialized(&ocs->sim_lock) == 0) {
  mtx_init(&ocs->sim_lock, "ocs_sim_lock", ((void*)0), MTX_DEF);
 }

 for (i = 0; i < (ocs->num_vports + 1); i++) {
  if (ocs_attach_port(ocs, i)) {
   ocs_log_err(ocs, "Attach port failed for chan: %d\n", i);
   goto detach_port;
  }
 }

 ocs->io_high_watermark = max_io;
 ocs->io_in_use = 0;
 return 0;

detach_port:
 while (--i >= 0) {
  ocs_detach_port(ocs, i);
 }

 cam_simq_free(ocs->devq);

 if (mtx_initialized(&ocs->sim_lock))
  mtx_destroy(&ocs->sim_lock);

 return 1;
}
