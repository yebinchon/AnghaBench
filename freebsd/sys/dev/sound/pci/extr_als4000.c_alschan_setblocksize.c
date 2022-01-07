
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int bufsz; } ;
struct sc_chinfo {int buffer; struct sc_info* parent; } ;
typedef int kobj_t ;


 int sndbuf_resize (int ,int,int) ;

__attribute__((used)) static u_int32_t
alschan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;

 if (blocksize > sc->bufsz / 2) {
  blocksize = sc->bufsz / 2;
 }
 sndbuf_resize(ch->buffer, 2, blocksize);
 return blocksize;
}
