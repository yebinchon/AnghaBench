
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct spicds_info {scalar_t__ type; int devinfo; int (* ctrl ) (int ,int,int,int ) ;scalar_t__ cif; int dev; } ;


 int DELAY (int) ;
 scalar_t__ SPICDS_TYPE_AK4381 ;
 scalar_t__ SPICDS_TYPE_AK4396 ;
 scalar_t__ SPICDS_TYPE_WM8770 ;
 int device_printf (int ,char*,int,int) ;
 int spicds_wrbit (struct spicds_info*,int) ;
 int stub1 (int ,int,int,int ) ;
 int stub2 (int ,int,int,int ) ;
 int stub3 (int ,int,int,int ) ;
 int stub4 (int ,int,int,int ) ;
 int stub5 (int ,int,int,int ) ;

__attribute__((used)) static void
spicds_wrcd(struct spicds_info *codec, int reg, u_int16_t val)
{
 int mask;





 if (codec->cif)
  codec->ctrl(codec->devinfo, 1, 1, 0);
 else
  codec->ctrl(codec->devinfo, 0, 1, 0);
 DELAY(1);
 if (codec->type != SPICDS_TYPE_WM8770) {
 if (codec->type == SPICDS_TYPE_AK4381) {

        spicds_wrbit(codec, 0);
        spicds_wrbit(codec, 1);
 }
 else if (codec->type == SPICDS_TYPE_AK4396)
 {

        spicds_wrbit(codec, 0);
        spicds_wrbit(codec, 0);
 }
 else {

 spicds_wrbit(codec, 1);
 spicds_wrbit(codec, 0);
 }

 spicds_wrbit(codec, 1);

 for (mask = 0x10; mask != 0; mask >>= 1)
  spicds_wrbit(codec, reg & mask);

 for (mask = 0x80; mask != 0; mask >>= 1)
  spicds_wrbit(codec, val & mask);

 DELAY(1);
 }
 else {

        for (mask = 0x40; mask != 0; mask >>= 1)
                spicds_wrbit(codec, reg & mask);

        for (mask = 0x100; mask != 0; mask >>= 1)
                spicds_wrbit(codec, val & mask);

        DELAY(1);
 }
 if (codec->cif) {
  codec->ctrl(codec->devinfo, 0, 1, 0);
  DELAY(1);
  codec->ctrl(codec->devinfo, 1, 1, 0);
 }
 else {
  codec->ctrl(codec->devinfo, 1, 1, 0);
 }

 return;
}
