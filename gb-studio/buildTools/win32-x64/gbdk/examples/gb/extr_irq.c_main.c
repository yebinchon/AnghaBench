
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAC_REG ;
 int TIM_IFLAG ;
 int TMA_REG ;
 int VBL_IFLAG ;
 int add_TIM (int ) ;
 int add_VBL (int ) ;
 int delay (unsigned long) ;
 int disable_interrupts () ;
 int enable_interrupts () ;
 int print_counter () ;
 int set_interrupts (int) ;
 int tim ;
 scalar_t__ tim_cnt ;
 int vbl ;
 scalar_t__ vbl_cnt ;

void main()
{

  disable_interrupts();
  vbl_cnt = tim_cnt = 0;
  add_VBL(vbl);
  add_TIM(tim);
  enable_interrupts();


  TMA_REG = 0x00U;

  TAC_REG = 0x04U;

  set_interrupts(VBL_IFLAG | TIM_IFLAG);

  while(1) {
    print_counter();
    delay(1000UL);
  }
}
