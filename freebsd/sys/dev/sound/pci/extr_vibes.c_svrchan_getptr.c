
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dmac_sh; int dmac_st; } ;
struct sc_chinfo {int buffer; struct sc_info* parent; } ;
typedef int kobj_t ;


 int sndbuf_getsize (int ) ;
 int sv_dma_get_count (int ,int ) ;

__attribute__((used)) static u_int32_t
svrchan_getptr(kobj_t obj, void *data)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 u_int32_t sz, remain;

 sz = sndbuf_getsize(ch->buffer);

 remain = (sv_dma_get_count(sc->dmac_st, sc->dmac_sh) + 1) * 2;
 return sz - remain;
}
