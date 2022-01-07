
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct au_chinfo {scalar_t__ dir; } ;
typedef int kobj_t ;


 scalar_t__ PCMDIR_PLAY ;

__attribute__((used)) static int
auchan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct au_chinfo *ch = data;
 if (ch->dir == PCMDIR_PLAY) {
 } else {
 }
 return speed;
}
