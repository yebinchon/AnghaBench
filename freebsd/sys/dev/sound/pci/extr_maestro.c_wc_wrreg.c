
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct agg_info {int dummy; } ;


 int AGG_WR (struct agg_info*,int ,int ,int) ;
 int PORT_WAVCACHE_DATA ;
 int PORT_WAVCACHE_INDEX ;

__attribute__((used)) static void
wc_wrreg(struct agg_info *ess, u_int16_t reg, u_int16_t data)
{
 AGG_WR(ess, PORT_WAVCACHE_INDEX, reg, 2);
 AGG_WR(ess, PORT_WAVCACHE_DATA, data, 2);
}
