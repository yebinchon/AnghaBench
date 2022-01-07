
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {int lnk_sta; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;


 int NTB_LNK_STA_WIDTH (int ) ;
 int NTB_WIDTH_NONE ;
 int link_is_up (struct ntb_softc*) ;

__attribute__((used)) static inline enum ntb_width
intel_ntb_link_sta_width(struct ntb_softc *ntb)
{

 if (!link_is_up(ntb))
  return (NTB_WIDTH_NONE);
 return (NTB_LNK_STA_WIDTH(ntb->lnk_sta));
}
