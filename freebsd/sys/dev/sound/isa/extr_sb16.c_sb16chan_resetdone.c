
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb_info {scalar_t__ prio; } ;
struct sb_chinfo {struct sb_info* parent; } ;
typedef int kobj_t ;



__attribute__((used)) static int
sb16chan_resetdone(kobj_t obj, void *data)
{
 struct sb_chinfo *ch = data;
 struct sb_info *sb = ch->parent;

 sb->prio = 0;

 return 0;
}
