
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int bufsz; } ;
struct sc_chinfo {int buffer; struct sc_info* parent; } ;
typedef int kobj_t ;


 int DEB (int ) ;
 int RANGE (int,int ,int) ;
 int SV_INTR_PER_BUFFER ;
 int SV_MIN_BLKSZ ;
 int printf (char*,int) ;
 int sndbuf_resize (int ,int,int) ;

__attribute__((used)) static u_int32_t
svchan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;


 RANGE(blocksize, SV_MIN_BLKSZ, sc->bufsz / SV_INTR_PER_BUFFER);
 sndbuf_resize(ch->buffer, SV_INTR_PER_BUFFER, blocksize);
 DEB(printf("svchan_setblocksize: %d\n", blocksize));
 return blocksize;
}
