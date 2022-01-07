
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sc_rchinfo {TYPE_1__* slot; struct sc_info* parent; } ;
struct sc_info {size_t currbank; } ;
typedef int kobj_t ;
struct TYPE_2__ {int PgStart; } ;



__attribute__((used)) static u_int32_t
ds1rchan_getptr(kobj_t obj, void *data)
{
 struct sc_rchinfo *ch = data;
 struct sc_info *sc = ch->parent;

 return ch->slot[sc->currbank].PgStart;
}
