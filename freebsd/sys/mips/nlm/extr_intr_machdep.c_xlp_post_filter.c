
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_intrsrc {int irt; int bus_ack_arg; int irq; int (* bus_ack ) (int ,int ) ;} ;


 int nlm_pic_ack (int ,int ) ;
 int stub1 (int ,int ) ;
 int xlp_pic_base ;

__attribute__((used)) static void
xlp_post_filter(void *source)
{
 struct xlp_intrsrc *src = source;

 if (src->bus_ack)
  src->bus_ack(src->irq, src->bus_ack_arg);
 nlm_pic_ack(xlp_pic_base, src->irt);
}
