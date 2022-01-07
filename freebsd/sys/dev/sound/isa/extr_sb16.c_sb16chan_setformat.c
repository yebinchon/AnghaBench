
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sb_info {int prio16; int prio; } ;
struct sb_chinfo {int fmt; int dir; struct sb_info* parent; } ;
typedef int kobj_t ;


 int AFMT_16BIT ;

__attribute__((used)) static int
sb16chan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct sb_chinfo *ch = data;
 struct sb_info *sb = ch->parent;

 ch->fmt = format;
 sb->prio = ch->dir;
 sb->prio16 = (ch->fmt & AFMT_16BIT)? 1 : 0;

 return 0;
}
