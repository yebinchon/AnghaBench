
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
typedef TYPE_1__* bt3c_softc_p ;
struct TYPE_3__ {int status; int dev; int flags; int node; } ;


 int BT3C_ANTENNA_OUT ;
 int NG_BT3C_ALERT (int ,char*) ;
 int NG_BT3C_INFO (int ,char*,char*) ;
 int bt3c_forward ;
 int bt3c_read (TYPE_1__*,int,int) ;
 int bt3c_send ;
 scalar_t__ ng_send_fn (int ,int *,int *,int *,int) ;

__attribute__((used)) static void
bt3c_swi_intr(void *context)
{
 bt3c_softc_p sc = (bt3c_softc_p) context;
 u_int16_t data;


 if (sc->status & 0x0001) {
  sc->status &= ~0x0001;

  if (ng_send_fn(sc->node, ((void*)0), &bt3c_forward, ((void*)0), 0) != 0)
   NG_BT3C_ALERT(sc->dev, "Could not forward frames!\n");
 }


 if (sc->status & 0x0002) {
  sc->status &= ~0x0002;

  if (ng_send_fn(sc->node, ((void*)0), &bt3c_send, ((void*)0), 1) != 0)
   NG_BT3C_ALERT(sc->dev, "Could not send frames!\n");
 }


 if (sc->status & 0x0020) {
  sc->status &= ~0x0020;

  bt3c_read(sc, 0x7002, data);
  data &= 0x10;

  if (data)
   sc->flags |= BT3C_ANTENNA_OUT;
  else
   sc->flags &= ~BT3C_ANTENNA_OUT;

  NG_BT3C_INFO(sc->dev, "Antenna %s\n", data? "OUT" : "IN");
 }
}
