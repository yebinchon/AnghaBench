
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct agg_info {int dev; } ;


 int AGG_WR (struct agg_info*,int ,int,int) ;
 int CODEC_CMD_WRITE ;
 int PORT_CODEC_CMD ;
 int PORT_CODEC_REG ;
 scalar_t__ agg_codec_wait4idle (struct agg_info*) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
agg_wrcodec(struct agg_info *ess, int regno, u_int32_t data)
{

 if (agg_codec_wait4idle(ess)) {

  device_printf(ess->dev, "agg_wrcodec() PROGLESS timed out.\n");
  return -1;
 }

 AGG_WR(ess, PORT_CODEC_REG, data, 2);
 AGG_WR(ess, PORT_CODEC_CMD, CODEC_CMD_WRITE | regno, 1);


 if (agg_codec_wait4idle(ess)) {

  device_printf(ess->dev, "agg_wrcodec() RW_DONE timed out.\n");
  return -1;
 }

 return 0;
}
