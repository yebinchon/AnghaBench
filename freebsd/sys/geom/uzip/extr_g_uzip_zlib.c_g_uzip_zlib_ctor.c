
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct g_uzip_dapi {void* pvt; int * rewind; int * free; int * decompress; int max_blen; } ;
struct g_uzip_zlib {struct g_uzip_dapi pub; int blksz; int zs; } ;


 int M_GEOM_UZIP ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ Z_OK ;
 int compressBound (int ) ;
 int free (struct g_uzip_zlib*,int ) ;
 int g_uzip_zlib_decompress ;
 int g_uzip_zlib_free ;
 int g_uzip_zlib_rewind ;
 scalar_t__ inflateInit (int *) ;
 struct g_uzip_zlib* malloc (int,int ,int) ;

struct g_uzip_dapi *
g_uzip_zlib_ctor(uint32_t blksz)
{
 struct g_uzip_zlib *zp;

 zp = malloc(sizeof(struct g_uzip_zlib), M_GEOM_UZIP, M_WAITOK | M_ZERO);
 if (inflateInit(&zp->zs) != Z_OK) {
  goto e1;
 }
 zp->blksz = blksz;
 zp->pub.max_blen = compressBound(blksz);
 zp->pub.decompress = &g_uzip_zlib_decompress;
 zp->pub.free = &g_uzip_zlib_free;
 zp->pub.rewind = &g_uzip_zlib_rewind;
 zp->pub.pvt = (void *)zp;
 return (&zp->pub);
e1:
 free(zp, M_GEOM_UZIP);
 return (((void*)0));
}
