
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct sc_info {int dmaa_sh; int dmaa_st; } ;
struct sc_chinfo {int buffer; struct sc_info* parent; } ;
typedef int kobj_t ;


 scalar_t__ sndbuf_getsize (int ) ;
 scalar_t__ sv_dma_get_count (int ,int ) ;

__attribute__((used)) static u_int32_t
svpchan_getptr(kobj_t obj, void *data)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 u_int32_t sz, remain;

 sz = sndbuf_getsize(ch->buffer);

 remain = sv_dma_get_count(sc->dmaa_st, sc->dmaa_sh) + 1;
 return (sz - remain);
}
