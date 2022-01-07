
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ac97_info {int flags; } ;



void
ac97_setflags(struct ac97_info *codec, u_int32_t val)
{
 codec->flags = val;
}
