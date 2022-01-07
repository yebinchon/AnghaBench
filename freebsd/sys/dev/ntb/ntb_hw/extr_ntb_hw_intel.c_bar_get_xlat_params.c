
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ntb_softc {TYPE_1__* xlat_reg; } ;
typedef enum ntb_bar { ____Placeholder_ntb_bar } ntb_bar ;
struct TYPE_2__ {int bar5_xlat; int bar5_limit; int bar5_base; int bar4_xlat; int bar4_limit; int bar4_base; int bar2_xlat; int bar2_limit; int bar2_base; } ;


 int KASSERT (int,char*) ;



 int NTB_MAX_BARS ;

__attribute__((used)) static inline void
bar_get_xlat_params(struct ntb_softc *ntb, enum ntb_bar bar, uint32_t *base,
    uint32_t *xlat, uint32_t *lmt)
{
 uint32_t basev, lmtv, xlatv;

 switch (bar) {
 case 130:
  basev = ntb->xlat_reg->bar2_base;
  lmtv = ntb->xlat_reg->bar2_limit;
  xlatv = ntb->xlat_reg->bar2_xlat;
  break;
 case 129:
  basev = ntb->xlat_reg->bar4_base;
  lmtv = ntb->xlat_reg->bar4_limit;
  xlatv = ntb->xlat_reg->bar4_xlat;
  break;
 case 128:
  basev = ntb->xlat_reg->bar5_base;
  lmtv = ntb->xlat_reg->bar5_limit;
  xlatv = ntb->xlat_reg->bar5_xlat;
  break;
 default:
  KASSERT(bar >= 130 && bar < NTB_MAX_BARS,
      ("bad bar"));
  basev = lmtv = xlatv = 0;
  break;
 }

 if (base != ((void*)0))
  *base = basev;
 if (xlat != ((void*)0))
  *xlat = xlatv;
 if (lmt != ((void*)0))
  *lmt = lmtv;
}
