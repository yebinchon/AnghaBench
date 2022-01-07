
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_vports; int sim_lock; int devq; } ;
typedef TYPE_1__ ocs_t ;
typedef int int32_t ;


 int cam_simq_free (int ) ;
 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int ocs_detach_port (TYPE_1__*,int) ;

int32_t
ocs_cam_detach(ocs_t *ocs)
{
 int i = 0;

 for (i = (ocs->num_vports); i >= 0; i--) {
  ocs_detach_port(ocs, i);
 }

 cam_simq_free(ocs->devq);

 if (mtx_initialized(&ocs->sim_lock))
  mtx_destroy(&ocs->sim_lock);

 return 0;
}
