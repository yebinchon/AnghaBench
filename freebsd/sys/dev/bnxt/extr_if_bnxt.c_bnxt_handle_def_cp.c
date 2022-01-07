
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ring; } ;
struct bnxt_softc {int def_cp_task; TYPE_1__ def_cp_ring; } ;


 int BNXT_CP_DISABLE_DB (int *) ;
 int FILTER_HANDLED ;
 int GROUPTASK_ENQUEUE (int *) ;

__attribute__((used)) static int
bnxt_handle_def_cp(void *arg)
{
 struct bnxt_softc *softc = arg;

 BNXT_CP_DISABLE_DB(&softc->def_cp_ring.ring);
 GROUPTASK_ENQUEUE(&softc->def_cp_task);
 return FILTER_HANDLED;
}
