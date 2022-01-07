
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_chinfo {int delta; } ;
typedef int kobj_t ;



__attribute__((used)) static u_int32_t
trpchan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct tr_chinfo *ch = data;

 ch->delta = (speed << 12) / 48000;
 return (ch->delta * 48000) >> 12;
}
