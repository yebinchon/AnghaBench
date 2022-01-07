
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mkuz_lzma {TYPE_1__* filters; int opt_lzma; scalar_t__ strm; } ;
typedef scalar_t__ lzma_stream ;
struct TYPE_2__ {int id; int * options; } ;


 int LZMA_FILTER_LZMA2 ;
 int LZMA_PRESET_DEFAULT ;
 scalar_t__ LZMA_STREAM_INIT ;
 int LZMA_VLI_UNKNOWN ;
 int USE_DEFAULT_LEVEL ;
 int errx (int,char*,...) ;
 scalar_t__ lzma_lzma_preset (int *,int) ;
 struct mkuz_lzma* mkuz_safe_zmalloc (int) ;

void *
mkuz_lzma_init(int *comp_level)
{
 struct mkuz_lzma *ulp;

 if (*comp_level == USE_DEFAULT_LEVEL)
  *comp_level = LZMA_PRESET_DEFAULT;
 if (*comp_level < 0 || *comp_level > 9)
  errx(1, "provided compression level %d is invalid",
      *comp_level);


 ulp = mkuz_safe_zmalloc(sizeof(struct mkuz_lzma));


 ulp->strm = (lzma_stream)LZMA_STREAM_INIT;
 if (lzma_lzma_preset(&ulp->opt_lzma, *comp_level))
  errx(1, "Error loading LZMA preset");

 ulp->filters[0].id = LZMA_FILTER_LZMA2;
 ulp->filters[0].options = &ulp->opt_lzma;
 ulp->filters[1].id = LZMA_VLI_UNKNOWN;

 return (void *)ulp;
}
