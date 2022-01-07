
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spicds_info {int devinfo; int (* ctrl ) (int ,unsigned int,int,unsigned int) ;scalar_t__ cif; } ;


 int DELAY (int) ;
 int stub1 (int ,unsigned int,int,unsigned int) ;
 int stub2 (int ,unsigned int,int,unsigned int) ;

__attribute__((used)) static void
spicds_wrbit(struct spicds_info *codec, int bit)
{
 unsigned int cs, cdti;
 if (codec->cif)
  cs = 1;
 else
  cs = 0;
 if (bit)
  cdti = 1;
 else
  cdti = 0;
 codec->ctrl(codec->devinfo, cs, 0, cdti);
 DELAY(1);
 codec->ctrl(codec->devinfo, cs, 1, cdti);
 DELAY(1);

 return;
}
