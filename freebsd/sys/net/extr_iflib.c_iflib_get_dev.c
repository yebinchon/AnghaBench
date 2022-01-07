
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* if_ctx_t ;
typedef int device_t ;
struct TYPE_3__ {int ifc_dev; } ;



device_t
iflib_get_dev(if_ctx_t ctx)
{

 return (ctx->ifc_dev);
}
