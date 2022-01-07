
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct es_info {int blkcnt; } ;
struct es_chinfo {int blksz; struct es_info* parent; } ;
typedef int kobj_t ;


 int eschan_setfragments (int ,void*,int ,int ) ;

__attribute__((used)) static uint32_t
eschan_setblocksize(kobj_t obj, void *data, uint32_t blksz)
{
   struct es_chinfo *ch = data;
   struct es_info *es = ch->parent;

 eschan_setfragments(obj, data, blksz, es->blkcnt);

 return (ch->blksz);
}
