
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int x; int line; int filename_0_7; } ;
struct TYPE_4__ {TYPE_1__ assert; } ;
struct fw_debug_cmd {TYPE_2__ u; } ;
struct adapter {int dummy; } ;


 int CH_ALERT (struct adapter*,char*,int ,int ,int ,int ) ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static void fw_asrt(struct adapter *adap, struct fw_debug_cmd *asrt)
{
 CH_ALERT(adap,
    "FW assertion at %.16s:%u, val0 %#x, val1 %#x\n",
    asrt->u.assert.filename_0_7,
    be32_to_cpu(asrt->u.assert.line),
    be32_to_cpu(asrt->u.assert.x),
    be32_to_cpu(asrt->u.assert.y));
}
