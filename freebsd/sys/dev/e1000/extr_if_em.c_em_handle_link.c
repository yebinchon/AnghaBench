
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int get_link_status; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct adapter {TYPE_2__ hw; } ;
typedef void* if_ctx_t ;


 int iflib_admin_intr_deferred (void*) ;
 struct adapter* iflib_get_softc (void*) ;

__attribute__((used)) static void
em_handle_link(void *context)
{
 if_ctx_t ctx = context;
 struct adapter *adapter = iflib_get_softc(ctx);

 adapter->hw.mac.get_link_status = 1;
 iflib_admin_intr_deferred(ctx);
}
