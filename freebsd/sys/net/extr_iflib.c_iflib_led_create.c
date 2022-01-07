
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* if_ctx_t ;
struct TYPE_4__ {int ifc_dev; int ifc_led_dev; } ;


 int device_get_nameunit (int ) ;
 int iflib_led_func ;
 int led_create (int ,TYPE_1__*,int ) ;

void
iflib_led_create(if_ctx_t ctx)
{

 ctx->ifc_led_dev = led_create(iflib_led_func, ctx,
     device_get_nameunit(ctx->ifc_dev));
}
