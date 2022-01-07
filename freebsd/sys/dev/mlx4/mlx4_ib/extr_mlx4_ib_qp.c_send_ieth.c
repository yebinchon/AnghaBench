
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int invalidate_rkey; int imm_data; } ;
struct ib_send_wr {int opcode; TYPE_1__ ex; } ;
typedef int __be32 ;





 int cpu_to_be32 (int ) ;

__attribute__((used)) static __be32 send_ieth(struct ib_send_wr *wr)
{
 switch (wr->opcode) {
 case 129:
 case 130:
  return wr->ex.imm_data;

 case 128:
  return cpu_to_be32(wr->ex.invalidate_rkey);

 default:
  return 0;
 }
}
