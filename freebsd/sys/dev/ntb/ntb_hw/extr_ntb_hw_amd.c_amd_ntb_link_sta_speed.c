
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_softc {int lnk_sta; } ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;


 int NTB_LNK_STA_SPEED (int ) ;
 int NTB_SPEED_NONE ;
 int amd_link_is_up (struct amd_ntb_softc*) ;

__attribute__((used)) static inline enum ntb_speed
amd_ntb_link_sta_speed(struct amd_ntb_softc *ntb)
{

 if (!amd_link_is_up(ntb))
  return (NTB_SPEED_NONE);

 return (NTB_LNK_STA_SPEED(ntb->lnk_sta));
}
