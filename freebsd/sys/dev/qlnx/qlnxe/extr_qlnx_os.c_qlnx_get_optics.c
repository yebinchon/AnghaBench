
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qlnx_link_output {int media_type; int speed; } ;
typedef int qlnx_host_t ;


 int IFM_1000_LX ;
 int IFM_1000_SX ;
 int IFM_10G_LR ;
 int IFM_10G_SR ;
 int IFM_10G_TWINAX ;
 int IFM_40G_CR4 ;
 int IFM_40G_SR4 ;
 int IFM_UNKNOWN ;



 int QLNX_IFM_100G_CR4 ;
 int QLNX_IFM_100G_SR4 ;
 int QLNX_IFM_25G_CR ;
 int QLNX_IFM_25G_SR ;

__attribute__((used)) static uint32_t
qlnx_get_optics(qlnx_host_t *ha, struct qlnx_link_output *if_link)
{
 uint32_t ifm_type = 0;

 switch (if_link->media_type) {

 case 129:
 case 128:
  if (if_link->speed == (100 * 1000))
   ifm_type = QLNX_IFM_100G_SR4;
  else if (if_link->speed == (40 * 1000))
   ifm_type = IFM_40G_SR4;
  else if (if_link->speed == (25 * 1000))
   ifm_type = QLNX_IFM_25G_SR;
  else if (if_link->speed == (10 * 1000))
   ifm_type = (IFM_10G_LR | IFM_10G_SR);
  else if (if_link->speed == (1 * 1000))
   ifm_type = (IFM_1000_SX | IFM_1000_LX);

  break;

 case 130:
  if (if_link->speed == (100 * 1000))
   ifm_type = QLNX_IFM_100G_CR4;
  else if (if_link->speed == (40 * 1000))
   ifm_type = IFM_40G_CR4;
  else if (if_link->speed == (25 * 1000))
   ifm_type = QLNX_IFM_25G_CR;
  else if (if_link->speed == (10 * 1000))
   ifm_type = IFM_10G_TWINAX;

  break;

 default :
  ifm_type = IFM_UNKNOWN;
  break;
 }
 return (ifm_type);
}
