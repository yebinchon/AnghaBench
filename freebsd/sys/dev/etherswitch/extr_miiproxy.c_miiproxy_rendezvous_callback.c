
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int device; } ;
struct TYPE_3__ {int device; } ;
struct rendezvous_entry {TYPE_2__ target; TYPE_1__ proxy; } ;
struct miiproxy_softc {int * mdio; } ;
typedef enum rendezvous_op { ____Placeholder_rendezvous_op } rendezvous_op ;




 int * device_get_parent (int ) ;
 struct miiproxy_softc* device_get_softc (int ) ;

__attribute__((used)) static int
miiproxy_rendezvous_callback(enum rendezvous_op op, struct rendezvous_entry *rendezvous)
{
 struct miiproxy_softc *sc = device_get_softc(rendezvous->proxy.device);

 switch (op) {
 case 129:
  sc->mdio = device_get_parent(rendezvous->target.device);
  break;
 case 128:
  sc->mdio = ((void*)0);
  break;
 }
 return (0);
}
