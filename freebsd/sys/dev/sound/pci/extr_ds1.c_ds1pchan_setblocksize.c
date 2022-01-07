
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_pchinfo {int spd; int buffer; struct sc_info* parent; } ;
struct sc_info {int bufsz; } ;
typedef int kobj_t ;


 int DS1_IRQHZ ;
 int roundup2 (int,int) ;
 int sndbuf_getalign (int ) ;
 int sndbuf_resize (int ,int,int) ;

__attribute__((used)) static u_int32_t
ds1pchan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct sc_pchinfo *ch = data;
 struct sc_info *sc = ch->parent;
 int drate;


 drate = ch->spd * sndbuf_getalign(ch->buffer);
 blocksize = roundup2((drate << 8) / DS1_IRQHZ, 4);
 sndbuf_resize(ch->buffer, sc->bufsz / blocksize, blocksize);

 return blocksize;
}
