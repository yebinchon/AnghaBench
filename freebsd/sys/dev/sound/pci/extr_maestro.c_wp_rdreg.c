
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct agg_info {int dummy; } ;


 int AGG_RD (struct agg_info*,int ,int) ;
 int AGG_WR (struct agg_info*,int ,int ,int) ;
 int PORT_DSP_DATA ;
 int PORT_DSP_INDEX ;

__attribute__((used)) static u_int16_t
wp_rdreg(struct agg_info *ess, u_int16_t reg)
{
 AGG_WR(ess, PORT_DSP_INDEX, reg, 2);
 return AGG_RD(ess, PORT_DSP_DATA, 2);
}
