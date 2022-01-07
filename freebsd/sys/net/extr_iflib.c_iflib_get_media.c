
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifmedia {int dummy; } ;
typedef TYPE_1__* if_ctx_t ;
struct TYPE_3__ {struct ifmedia* ifc_mediap; } ;



struct ifmedia *
iflib_get_media(if_ctx_t ctx)
{

 return (ctx->ifc_mediap);
}
