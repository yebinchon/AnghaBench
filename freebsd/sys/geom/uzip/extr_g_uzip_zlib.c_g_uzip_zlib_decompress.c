
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t avail_in; int avail_out; void* next_out; void* next_in; } ;
struct g_uzip_zlib {TYPE_1__ zs; int blksz; } ;
struct g_uzip_dapi {scalar_t__ pvt; } ;


 int Z_FINISH ;
 scalar_t__ Z_STREAM_END ;
 scalar_t__ inflate (TYPE_1__*,int ) ;
 int printf (char*,char const*) ;

__attribute__((used)) static int
g_uzip_zlib_decompress(struct g_uzip_dapi *zpp, const char *gp_name, void *ibp,
    size_t ilen, void *obp)
{
 int err;
 struct g_uzip_zlib *zp;

 zp = (struct g_uzip_zlib *)zpp->pvt;

 zp->zs.next_in = ibp;
 zp->zs.avail_in = ilen;
 zp->zs.next_out = obp;
 zp->zs.avail_out = zp->blksz;

 err = (inflate(&zp->zs, Z_FINISH) != Z_STREAM_END) ? 1 : 0;
 if (err != 0) {
  printf("%s: UZIP(zlib) inflate() failed\n", gp_name);
 }
 return (err);
}
