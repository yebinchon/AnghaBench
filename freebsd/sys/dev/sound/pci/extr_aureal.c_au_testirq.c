
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au_info {scalar_t__ interrupts; int unit; } ;


 int AU_REG_IRQEN ;
 int AU_REG_IRQSRC ;
 int AU_REG_UNK1 ;
 int DELAY (int) ;
 int au_wr (struct au_info*,int ,int ,int,int) ;
 int printf (char*,int) ;

__attribute__((used)) static int
au_testirq(struct au_info *au)
{
 au_wr(au, 0, AU_REG_UNK1, 0x80001000, 4);
 au_wr(au, 0, AU_REG_IRQEN, 0x00001030, 4);
 au_wr(au, 0, AU_REG_IRQSRC, 0x000007ff, 4);
 DELAY(1000000);
 if (au->interrupts==0) printf("pcm%d: irq test failed\n", au->unit);

 return 0;
}
