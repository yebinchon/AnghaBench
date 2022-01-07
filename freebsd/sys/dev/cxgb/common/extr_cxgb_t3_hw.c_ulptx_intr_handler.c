
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct TYPE_5__ {int irq_stats; } ;
typedef TYPE_1__ adapter_t ;


 int A_ULPTX_INT_CAUSE ;




 int t3_fatal_err (TYPE_1__*) ;
 scalar_t__ t3_handle_intr_status (TYPE_1__*,int ,int,struct intr_info*,int ) ;

__attribute__((used)) static void ulptx_intr_handler(adapter_t *adapter)
{
 static struct intr_info ulptx_intr_info[] = {
  { 131, "ULP TX channel 0 PBL out of bounds",
    129, 0 },
  { 130, "ULP TX channel 1 PBL out of bounds",
    128, 0 },
  { 0xfc, "ULP TX parity error", -1, 1 },
  { 0 }
        };

 if (t3_handle_intr_status(adapter, A_ULPTX_INT_CAUSE, 0xffffffff,
      ulptx_intr_info, adapter->irq_stats))
  t3_fatal_err(adapter);
}
