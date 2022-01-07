
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sim; } ;
typedef TYPE_1__ vhba_softc_t ;


 int TRUE ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_path (int ) ;
 int vhba_fini (TYPE_1__*) ;
 int xpt_bus_deregister (int ) ;

__attribute__((used)) static void
vhba_detach(vhba_softc_t *vhba)
{



 vhba_fini(vhba);
 xpt_bus_deregister(cam_sim_path(vhba->sim));
 cam_sim_free(vhba->sim, TRUE);
}
