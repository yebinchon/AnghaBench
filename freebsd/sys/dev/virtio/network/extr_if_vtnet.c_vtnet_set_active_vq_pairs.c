
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_flags; int vtnet_act_vq_pairs; int vtnet_requested_vq_pairs; int vtnet_dev; } ;
typedef int device_t ;


 int VTNET_FLAG_MULTIQ ;
 int device_printf (int ,char*,int) ;
 scalar_t__ vtnet_ctrl_mq_cmd (struct vtnet_softc*,int) ;

__attribute__((used)) static void
vtnet_set_active_vq_pairs(struct vtnet_softc *sc)
{
 device_t dev;
 int npairs;

 dev = sc->vtnet_dev;

 if ((sc->vtnet_flags & VTNET_FLAG_MULTIQ) == 0) {
  sc->vtnet_act_vq_pairs = 1;
  return;
 }

 npairs = sc->vtnet_requested_vq_pairs;

 if (vtnet_ctrl_mq_cmd(sc, npairs) != 0) {
  device_printf(dev,
      "cannot set active queue pairs to %d\n", npairs);
  npairs = 1;
 }

 sc->vtnet_act_vq_pairs = npairs;
}
