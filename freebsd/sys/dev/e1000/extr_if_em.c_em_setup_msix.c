
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct adapter {TYPE_2__ hw; } ;
typedef int if_ctx_t ;


 scalar_t__ e1000_82574 ;
 int em_enable_vectors_82574 (int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static int
em_setup_msix(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);

 if (adapter->hw.mac.type == e1000_82574) {
  em_enable_vectors_82574(ctx);
 }
 return (0);
}
