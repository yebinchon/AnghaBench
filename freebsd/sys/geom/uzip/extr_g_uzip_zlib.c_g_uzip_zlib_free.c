
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_uzip_zlib {int zs; } ;
struct g_uzip_dapi {scalar_t__ pvt; } ;


 int M_GEOM_UZIP ;
 int free (struct g_uzip_zlib*,int ) ;
 int inflateEnd (int *) ;

__attribute__((used)) static void
g_uzip_zlib_free(struct g_uzip_dapi *zpp)
{
 struct g_uzip_zlib *zp;

 zp = (struct g_uzip_zlib *)zpp->pvt;
 inflateEnd(&zp->zs);
 free(zp, M_GEOM_UZIP);
}
