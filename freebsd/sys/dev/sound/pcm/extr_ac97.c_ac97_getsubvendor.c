
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ac97_info {int subvendor; } ;



u_int32_t
ac97_getsubvendor(struct ac97_info *codec)
{
 return codec->subvendor;
}
