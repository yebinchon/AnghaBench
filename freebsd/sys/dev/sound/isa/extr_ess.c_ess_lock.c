
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int parent_dev; } ;


 int device_get_softc (int ) ;
 int sbc_lock (int ) ;

__attribute__((used)) static void
ess_lock(struct ess_info *sc) {

 sbc_lock(device_get_softc(sc->parent_dev));
}
