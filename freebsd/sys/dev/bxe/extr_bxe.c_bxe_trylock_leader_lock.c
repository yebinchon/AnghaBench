
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int dummy; } ;


 int bxe_get_leader_lock_resource (struct bxe_softc*) ;
 int bxe_trylock_hw_lock (struct bxe_softc*,int ) ;

__attribute__((used)) static uint8_t
bxe_trylock_leader_lock(struct bxe_softc *sc)
{
    return (bxe_trylock_hw_lock(sc, bxe_get_leader_lock_resource(sc)));
}
