
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agg_info {int dummy; } ;


 int AGG_RD (struct agg_info*,int ,int) ;
 int AGG_WR (struct agg_info*,int ,int,int) ;
 int PORT_RINGBUS_CTRL ;

__attribute__((used)) static void
ringbus_setdest(struct agg_info *ess, int src, int dest)
{
 u_int32_t data;

 data = AGG_RD(ess, PORT_RINGBUS_CTRL, 4);
 data &= ~(0xfU << src);
 data |= (0xfU & dest) << src;
 AGG_WR(ess, PORT_RINGBUS_CTRL, data, 4);
}
