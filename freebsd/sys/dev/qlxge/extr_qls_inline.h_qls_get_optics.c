
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int link_hw_info; scalar_t__ link_up; } ;
typedef TYPE_1__ qla_host_t ;


 int IFM_1000_SX ;
 int IFM_10G_LR ;
 int IFM_10G_SR ;
 int IFM_10G_TWINAX ;

__attribute__((used)) static __inline uint32_t
qls_get_optics(qla_host_t *ha)
{
 uint32_t link_speed = 0;

 if (ha->link_up) {
  switch ((ha->link_hw_info & 0xF0)) {
  case (0x01 << 4):
  case (0x02 << 4):
  case (0x03 << 4):
   link_speed = (IFM_10G_LR | IFM_10G_SR);
   break;

  case (0x04 << 4):
  case (0x05 << 4):
  case (0x06 << 4):
   link_speed = IFM_10G_TWINAX;
   break;

  case (0x07 << 4):
  case (0x08 << 4):
  case (0x09 << 4):
  case (0x0A << 4):
  case (0x0B << 4):
   link_speed = IFM_1000_SX;
   break;
  }
 }

 return(link_speed);
}
