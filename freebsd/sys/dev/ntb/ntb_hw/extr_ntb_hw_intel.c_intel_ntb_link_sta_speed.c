
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {int lnk_sta; } ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;


 int NTB_LINK_SPEED_MASK ;
 int NTB_SPEED_NONE ;
 int link_is_up (struct ntb_softc*) ;

__attribute__((used)) static inline enum ntb_speed
intel_ntb_link_sta_speed(struct ntb_softc *ntb)
{

 if (!link_is_up(ntb))
  return (NTB_SPEED_NONE);
 return (ntb->lnk_sta & NTB_LINK_SPEED_MASK);
}
