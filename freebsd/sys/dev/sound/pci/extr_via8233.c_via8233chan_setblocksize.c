
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct via_info {int blkcnt; } ;
struct via_chinfo {int blksz; struct via_info* parent; } ;
typedef int kobj_t ;


 int via8233chan_setfragments (int ,void*,int ,int ) ;

__attribute__((used)) static uint32_t
via8233chan_setblocksize(kobj_t obj, void *data, uint32_t blksz)
{
 struct via_chinfo *ch = data;
 struct via_info *via = ch->parent;

 via8233chan_setfragments(obj, data, blksz, via->blkcnt);

 return (ch->blksz);
}
