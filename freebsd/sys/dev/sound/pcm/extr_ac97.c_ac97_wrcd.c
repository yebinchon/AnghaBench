
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct ac97_info {int devinfo; int methods; } ;


 int AC97_WRITE (int ,int ,int,int ) ;

void
ac97_wrcd(struct ac97_info *codec, int reg, u_int16_t val)
{
 AC97_WRITE(codec->methods, codec->devinfo, reg, val);
}
