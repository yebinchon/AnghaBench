
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int HW_LOCK_RESOURCE_RECOVERY_LEADER_0 ;
 int HW_LOCK_RESOURCE_RECOVERY_LEADER_1 ;
 scalar_t__ SC_PATH (struct bxe_softc*) ;

__attribute__((used)) static int
bxe_get_leader_lock_resource(struct bxe_softc *sc)
{
    if (SC_PATH(sc)) {
        return (HW_LOCK_RESOURCE_RECOVERY_LEADER_1);
    } else {
        return (HW_LOCK_RESOURCE_RECOVERY_LEADER_0);
    }
}
