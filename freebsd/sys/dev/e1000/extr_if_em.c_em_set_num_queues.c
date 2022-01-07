
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct adapter {TYPE_2__ hw; } ;
typedef int if_ctx_t ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static int
em_set_num_queues(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 int maxqueues;


 switch (adapter->hw.mac.type) {
 case 133:
 case 132:
 case 129:
 case 128:
  maxqueues = 8;
  break;
 case 131:
 case 134:
  maxqueues = 4;
  break;
 case 130:
 case 135:
  maxqueues = 2;
  break;
 default:
  maxqueues = 1;
  break;
 }

 return (maxqueues);
}
