
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int EINVAL ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int VSC_REG (int,int,int) ;
 int elmr_write (int *,int ,int) ;

int t3_vsc7323_set_speed_fc(adapter_t *adap, int speed, int fc, int port)
{
 int mode, clk, r;

 if (speed >= 0) {
  if (speed == SPEED_10)
   mode = clk = 1;
  else if (speed == SPEED_100)
   mode = 1, clk = 2;
  else if (speed == SPEED_1000)
   mode = clk = 3;
  else
   return -EINVAL;

  if ((r = elmr_write(adap, VSC_REG(1, port, 0),
        0xa590 | (mode << 2))) ||
      (r = elmr_write(adap, VSC_REG(1, port, 0xb),
        0x91 | (clk << 1))) ||
      (r = elmr_write(adap, VSC_REG(1, port, 0xb),
        0x90 | (clk << 1))) ||
      (r = elmr_write(adap, VSC_REG(1, port, 0),
        0xa593 | (mode << 2))))
   return r;
 }

 r = (fc & PAUSE_RX) ? 0x60200 : 0x20200;
 if (fc & PAUSE_TX)
  r |= (1 << 19);
 return elmr_write(adap, VSC_REG(1, port, 1), r);
}
