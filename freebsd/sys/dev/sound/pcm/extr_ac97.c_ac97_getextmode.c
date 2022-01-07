
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct ac97_info {int extstat; } ;



u_int16_t
ac97_getextmode(struct ac97_info *codec)
{
 return codec->extstat;
}
