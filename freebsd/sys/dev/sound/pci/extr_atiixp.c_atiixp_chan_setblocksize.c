
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atiixp_info {int blkcnt; } ;
struct atiixp_chinfo {int blksz; struct atiixp_info* parent; } ;
typedef int kobj_t ;


 int atiixp_chan_setfragments (int ,void*,int ,int ) ;

__attribute__((used)) static uint32_t
atiixp_chan_setblocksize(kobj_t obj, void *data, uint32_t blksz)
{
 struct atiixp_chinfo *ch = data;
 struct atiixp_info *sc = ch->parent;

 atiixp_chan_setfragments(obj, data, blksz, sc->blkcnt);

 return (ch->blksz);
}
