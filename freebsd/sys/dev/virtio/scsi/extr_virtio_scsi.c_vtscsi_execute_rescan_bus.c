
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int dummy; } ;


 int CAM_LUN_WILDCARD ;
 int CAM_TARGET_WILDCARD ;
 int vtscsi_execute_rescan (struct vtscsi_softc*,int ,int ) ;

__attribute__((used)) static void
vtscsi_execute_rescan_bus(struct vtscsi_softc *sc)
{

 vtscsi_execute_rescan(sc, CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);
}
