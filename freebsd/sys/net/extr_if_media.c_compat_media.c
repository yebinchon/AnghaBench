
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IFM_ETHER ;
 int IFM_ETH_XTYPE ;
 int IFM_OTHER ;
 int IFM_SUBTYPE (int) ;
 int IFM_TMASK ;
 scalar_t__ IFM_TYPE (int) ;

__attribute__((used)) static int
compat_media(int media)
{

 if (IFM_TYPE(media) == IFM_ETHER && IFM_SUBTYPE(media) > IFM_OTHER) {
  media &= ~(IFM_ETH_XTYPE|IFM_TMASK);
  media |= IFM_OTHER;
 }
 return (media);
}
