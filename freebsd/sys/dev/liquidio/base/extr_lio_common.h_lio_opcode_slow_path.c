
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subcode; int opcode; } ;
union octeon_rh {TYPE_1__ r; } ;
typedef scalar_t__ uint16_t ;


 int LIO_OPCODE_NIC ;
 int LIO_OPCODE_NIC_NW_DATA ;
 scalar_t__ LIO_OPCODE_SUBCODE (int ,int ) ;

__attribute__((used)) static inline int
lio_opcode_slow_path(union octeon_rh *rh)
{
 uint16_t subcode1, subcode2;

 subcode1 = LIO_OPCODE_SUBCODE((rh)->r.opcode, (rh)->r.subcode);
 subcode2 = LIO_OPCODE_SUBCODE(LIO_OPCODE_NIC, LIO_OPCODE_NIC_NW_DATA);

 return (subcode2 != subcode1);
}
