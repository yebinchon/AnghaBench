
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct agg_info {int dummy; } ;


 int AGG_WR (struct agg_info*,int ,int ,int) ;
 int PORT_DSP_DATA ;
 int PORT_DSP_INDEX ;

__attribute__((used)) static void
wp_wrreg(struct agg_info *ess, u_int16_t reg, u_int16_t data)
{
 AGG_WR(ess, PORT_DSP_INDEX, reg, 2);
 AGG_WR(ess, PORT_DSP_DATA, data, 2);
}
