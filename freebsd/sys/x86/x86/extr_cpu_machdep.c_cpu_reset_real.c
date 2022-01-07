
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct region_descriptor {scalar_t__ rd_base; scalar_t__ rd_limit; } ;
struct TYPE_2__ {int RESCFG; } ;


 scalar_t__ CPU_GEODE1100 ;
 int DELAY (int) ;
 int IO_KBD ;
 int breakpoint () ;
 scalar_t__ cpu ;
 int disable_intr () ;
 TYPE_1__* elan_mmcr ;
 int inb (int) ;
 int lidt (struct region_descriptor*) ;
 int outb (int,int) ;
 int outl (int,int) ;
 int printf (char*) ;

__attribute__((used)) static void
cpu_reset_real(void)
{
 struct region_descriptor null_idt;
 int b;

 disable_intr();
 outb(IO_KBD + 4, 0xFE);
 DELAY(500000);
 outb(0xcf9, 0x2);
 outb(0xcf9, 0x6);
 DELAY(500000);
 b = inb(0x92);
 if (b != 0xff) {
  if ((b & 0x1) != 0)
   outb(0x92, b & 0xfe);
  outb(0x92, b | 0x1);
  DELAY(500000);
 }

 printf("No known reset method worked, attempting CPU shutdown\n");
 DELAY(1000000);


 null_idt.rd_limit = 0;
 null_idt.rd_base = 0;
 lidt(&null_idt);


 breakpoint();


 while(1);
}
