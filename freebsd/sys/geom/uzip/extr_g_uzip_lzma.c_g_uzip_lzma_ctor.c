
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct g_uzip_dapi {struct g_uzip_lzma* pvt; int * rewind; int * free; int * decompress; int max_blen; } ;
struct g_uzip_lzma {struct g_uzip_dapi pub; int blksz; int * s; } ;


 int LZ4_compressBound (int ) ;
 int M_GEOM_UZIP ;
 int M_WAITOK ;
 int XZ_SINGLE ;
 int free (struct g_uzip_lzma*,int ) ;
 int g_uzip_lzma_decompress ;
 int g_uzip_lzma_free ;
 int g_uzip_lzma_nop ;
 struct g_uzip_lzma* malloc (int,int ,int ) ;
 int * xz_dec_init (int ,int ) ;

struct g_uzip_dapi *
g_uzip_lzma_ctor(uint32_t blksz)
{
 struct g_uzip_lzma *lzp;

 lzp = malloc(sizeof(struct g_uzip_lzma), M_GEOM_UZIP, M_WAITOK);
 lzp->s = xz_dec_init(XZ_SINGLE, 0);
 if (lzp->s == ((void*)0)) {
  goto e1;
 }
 lzp->blksz = blksz;
 lzp->pub.max_blen = LZ4_compressBound(blksz);
 lzp->pub.decompress = &g_uzip_lzma_decompress;
 lzp->pub.free = &g_uzip_lzma_free;
 lzp->pub.rewind = &g_uzip_lzma_nop;
 lzp->pub.pvt = lzp;
 return (&lzp->pub);
e1:
        free(lzp, M_GEOM_UZIP);
        return (((void*)0));
}
