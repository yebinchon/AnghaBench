
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; } ;
struct mkuz_blk {TYPE_1__ info; int data; int alen; } ;
typedef int ZSTD_CCtx ;


 size_t ZSTD_compress2 (int *,int ,int ,int ,size_t) ;
 int ZSTD_getErrorName (size_t) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int errx (int,char*,int ) ;

void
mkuz_zstd_compress(void *p, const struct mkuz_blk *iblk, struct mkuz_blk *oblk)
{
 ZSTD_CCtx *cctx;
 size_t rc;

 cctx = p;

 rc = ZSTD_compress2(cctx, oblk->data, oblk->alen, iblk->data,
     iblk->info.len);
 if (ZSTD_isError(rc))
  errx(1, "could not compress data: ZSTD_compress2: %s",
      ZSTD_getErrorName(rc));

 oblk->info.len = rc;
}
