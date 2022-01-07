
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ac97_info {int dev; } ;


 int AC97_POWER_STATUS ;
 int AC97_REG_POWER ;
 int AC97_REG_RESET ;
 int DELAY (int) ;
 int ac97_rdcd (struct ac97_info*,int ) ;
 int ac97_wrcd (struct ac97_info*,int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ac97_reset(struct ac97_info *codec)
{
 u_int32_t i, ps;
 ac97_wrcd(codec, AC97_REG_RESET, 0);
 for (i = 0; i < 500; i++) {
  ps = ac97_rdcd(codec, AC97_REG_POWER) & AC97_POWER_STATUS;
  if (ps == AC97_POWER_STATUS)
   return;
  DELAY(1000);
 }
 device_printf(codec->dev, "AC97 reset timed out.\n");
}
