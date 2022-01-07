
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_chinfo {int flush_bit; int parent; } ;


 int ATI_REG_FIFO_FLUSH ;
 int atiixp_wr (int ,int ,int ) ;

__attribute__((used)) static void
atiixp_flush_dma(struct atiixp_chinfo *ch)
{
 atiixp_wr(ch->parent, ATI_REG_FIFO_FLUSH, ch->flush_bit);
}
