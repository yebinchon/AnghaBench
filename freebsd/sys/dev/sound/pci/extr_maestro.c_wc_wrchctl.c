
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct agg_info {int dummy; } ;


 int wc_wrreg (struct agg_info*,int,int ) ;

__attribute__((used)) static void
wc_wrchctl(struct agg_info *ess, int ch, u_int16_t data)
{
 wc_wrreg(ess, ch << 3, data);
}
