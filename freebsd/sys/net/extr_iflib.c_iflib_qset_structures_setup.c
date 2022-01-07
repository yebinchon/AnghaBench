
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* if_ctx_t ;
struct TYPE_5__ {int ifc_dev; } ;


 int device_printf (int ,char*,int) ;
 int iflib_rx_structures_setup (TYPE_1__*) ;
 int iflib_tx_structures_setup (TYPE_1__*) ;

__attribute__((used)) static int
iflib_qset_structures_setup(if_ctx_t ctx)
{
 int err;





 if ((err = iflib_tx_structures_setup(ctx)) != 0) {
  device_printf(ctx->ifc_dev, "iflib_tx_structures_setup failed: %d\n", err);
  return (err);
 }

 if ((err = iflib_rx_structures_setup(ctx)) != 0)
  device_printf(ctx->ifc_dev, "iflib_rx_structures_setup failed: %d\n", err);

 return (err);
}
