
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ac97_info {int flags; } ;



u_int32_t
ac97_getflags(struct ac97_info *codec)
{
 return codec->flags;
}
