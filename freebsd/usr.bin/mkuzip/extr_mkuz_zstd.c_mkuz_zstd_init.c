
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void ZSTD_CCtx ;


 int USE_DEFAULT_LEVEL ;
 size_t ZSTD_CCtx_setParameter (void*,int ,int) ;
 int ZSTD_c_checksumFlag ;
 int ZSTD_c_compressionLevel ;
 void* ZSTD_createCCtx () ;
 int ZSTD_getErrorName (size_t) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int ZSTD_maxCLevel () ;
 int ZSTD_minCLevel () ;
 int errx (int,char*,...) ;

void *
mkuz_zstd_init(int *comp_level)
{
 ZSTD_CCtx *cctx;
 size_t rc;


 if (*comp_level == USE_DEFAULT_LEVEL)
  *comp_level = 9;
 if (*comp_level < ZSTD_minCLevel() || *comp_level == 0 ||
     *comp_level > ZSTD_maxCLevel())
  errx(1, "provided compression level %d is invalid",
      *comp_level);

 cctx = ZSTD_createCCtx();
 if (cctx == ((void*)0))
  errx(1, "could not allocate Zstd context");

 rc = ZSTD_CCtx_setParameter(cctx, ZSTD_c_compressionLevel,
     *comp_level);
 if (ZSTD_isError(rc))
  errx(1, "Could not set zstd compression level %d: %s",
      *comp_level, ZSTD_getErrorName(rc));

 rc = ZSTD_CCtx_setParameter(cctx, ZSTD_c_checksumFlag, 1);
 if (ZSTD_isError(rc))
  errx(1, "Could not enable zstd checksum: %s",
      ZSTD_getErrorName(rc));

 return (cctx);
}
