
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agg_info {int dev; } ;


 int AGG_RD (struct agg_info*,int ,int) ;
 int AGG_WR (struct agg_info*,int ,int,int) ;
 int CODEC_CMD_READ ;
 int PORT_CODEC_CMD ;
 int PORT_CODEC_REG ;
 scalar_t__ agg_codec_wait4idle (struct agg_info*) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
agg_rdcodec(struct agg_info *ess, int regno)
{
 int ret;


 if (agg_codec_wait4idle(ess)) {

  device_printf(ess->dev, "agg_rdcodec() PROGLESS timed out.\n");
  return -1;
 }

 AGG_WR(ess, PORT_CODEC_CMD, CODEC_CMD_READ | regno, 1);



 if (!agg_codec_wait4idle(ess)) {
  ret = AGG_RD(ess, PORT_CODEC_REG, 2);
 } else {

  device_printf(ess->dev, "agg_rdcodec() RW_DONE timed out.\n");
  ret = -1;
 }

 return ret;
}
