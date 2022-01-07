
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int16_t ;
struct agg_info {int dev; } ;


 int WPREG_CRAM_PTR ;
 int WPREG_DATA_PORT ;
 int device_printf (int ,char*) ;
 unsigned int wp_rdreg (struct agg_info*,int ) ;
 scalar_t__ wp_wait_data (struct agg_info*,unsigned int) ;
 int wp_wrreg (struct agg_info*,int ,unsigned int) ;

__attribute__((used)) static u_int16_t
wp_rdapu(struct agg_info *ess, unsigned ch, u_int16_t reg)
{
 wp_wrreg(ess, WPREG_CRAM_PTR, reg | (ch << 4));
 if (wp_wait_data(ess, reg | (ch << 4)) != 0)
  device_printf(ess->dev, "wp_rdapu() indexing timed out.\n");
 return wp_rdreg(ess, WPREG_DATA_PORT);
}
