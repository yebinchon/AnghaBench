
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct cam_sim {int dummy; } ;
struct TYPE_3__ {int cam_mtx; } ;
typedef TYPE_1__ isc_session_t ;


 TYPE_1__* cam_sim_softc (struct cam_sim*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int scsi_encap (struct cam_sim*,union ccb*) ;

__attribute__((used)) static __inline int
_scsi_encap(struct cam_sim *sim, union ccb *ccb)
{
     int ret;


     ret = scsi_encap(sim, ccb);







     return ret;
}
