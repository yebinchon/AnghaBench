
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_phy {int dummy; } ;
struct elink_params {int port; int sc; } ;


 scalar_t__ GRCBASE_MISC ;
 scalar_t__ MISC_REGISTERS_RESET_REG_3_CLEAR ;
 int REG_WR (int ,scalar_t__,int) ;

__attribute__((used)) static void elink_int_link_reset(struct elink_phy *phy,
     struct elink_params *params)
{

 REG_WR(params->sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_CLEAR,
        (0x1ff << (params->port*16)));
}
