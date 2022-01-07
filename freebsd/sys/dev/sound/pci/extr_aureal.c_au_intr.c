
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int channel; } ;
struct au_info {int unit; TYPE_1__ pch; int interrupts; } ;


 int AU_BUFFSIZE ;
 int AU_IRQ_FATAL ;
 int AU_IRQ_PARITY ;
 int AU_IRQ_PCMOUT ;
 int AU_IRQ_UNKNOWN ;
 int AU_REG_IRQSRC ;
 int AU_REG_UNK1 ;
 int AU_REG_UNK2 ;
 int AU_REG_UNK3 ;
 int AU_REG_UNK4 ;
 int AU_REG_UNK5 ;
 int au_rd (struct au_info*,int ,int ,int) ;
 int au_wr (struct au_info*,int ,int ,int,int) ;
 int chn_intr (int ) ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
au_intr (void *p)
{
 struct au_info *au = p;
 u_int32_t intsrc, i;

 au->interrupts++;
 intsrc=au_rd(au, 0, AU_REG_IRQSRC, 4);
 printf("pcm%d: interrupt with src %x\n", au->unit, intsrc);
 if (intsrc & AU_IRQ_FATAL) printf("pcm%d: fatal error irq\n", au->unit);
 if (intsrc & AU_IRQ_PARITY) printf("pcm%d: parity error irq\n", au->unit);
 if (intsrc & AU_IRQ_UNKNOWN) {
  (void)au_rd(au, 0, AU_REG_UNK1, 4);
  au_wr(au, 0, AU_REG_UNK1, 0, 4);
  au_wr(au, 0, AU_REG_UNK1, 0x10000, 4);
 }
 if (intsrc & AU_IRQ_PCMOUT) {
         i=au_rd(au, 0, AU_REG_UNK2, 4) & (AU_BUFFSIZE-1);
         chn_intr(au->pch.channel);
  (void)au_rd(au, 0, AU_REG_UNK3, 4);
  (void)au_rd(au, 0, AU_REG_UNK4, 4);
  (void)au_rd(au, 0, AU_REG_UNK5, 4);
 }
 au_wr(au, 0, AU_REG_IRQSRC, intsrc & 0x7ff, 4);
 au_rd(au, 0, AU_REG_IRQSRC, 4);
}
