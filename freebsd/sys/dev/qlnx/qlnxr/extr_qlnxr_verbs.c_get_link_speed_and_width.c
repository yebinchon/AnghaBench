
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IB_SPEED_DDR ;
 int IB_SPEED_EDR ;
 int IB_SPEED_QDR ;
 int IB_SPEED_SDR ;
 int IB_WIDTH_1X ;
 int IB_WIDTH_4X ;

__attribute__((used)) static inline void
get_link_speed_and_width(int speed, uint8_t *ib_speed, uint8_t *ib_width)
{
 switch (speed) {
 case 1000:
  *ib_speed = IB_SPEED_SDR;
  *ib_width = IB_WIDTH_1X;
  break;
 case 10000:
  *ib_speed = IB_SPEED_QDR;
  *ib_width = IB_WIDTH_1X;
  break;

 case 20000:
  *ib_speed = IB_SPEED_DDR;
  *ib_width = IB_WIDTH_4X;
  break;

 case 25000:
  *ib_speed = IB_SPEED_EDR;
  *ib_width = IB_WIDTH_1X;
  break;

 case 40000:
  *ib_speed = IB_SPEED_QDR;
  *ib_width = IB_WIDTH_4X;
  break;

 case 50000:
  *ib_speed = IB_SPEED_QDR;
  *ib_width = IB_WIDTH_4X;
  break;

 case 100000:
  *ib_speed = IB_SPEED_EDR;
  *ib_width = IB_WIDTH_4X;
  break;

 default:

  *ib_speed = IB_SPEED_SDR;
  *ib_width = IB_WIDTH_1X;
 }
 return;
}
