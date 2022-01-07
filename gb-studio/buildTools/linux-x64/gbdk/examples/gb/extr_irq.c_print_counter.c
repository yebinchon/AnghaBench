
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UBYTE ;


 int disable_interrupts () ;
 int enable_interrupts () ;
 int gotoxy (int,int ) ;
 int posy () ;
 int printf (char*,unsigned int) ;
 scalar_t__ tim_cnt ;
 scalar_t__ vbl_cnt ;

void print_counter()
{
  UBYTE cnt;


  disable_interrupts();
  cnt = tim_cnt;
  enable_interrupts();

  printf(" TIM %u", (unsigned int)cnt);
  gotoxy(9, posy());


  disable_interrupts();
  cnt = vbl_cnt;
  enable_interrupts();

  printf("- VBL %u\n", (unsigned int)cnt);
}
