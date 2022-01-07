
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_intrsrc {int bus_ack_arg; int irq; int (* bus_ack ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void
xlp_pre_ithread(void *source)
{
 struct xlp_intrsrc *src = source;

 if (src->bus_ack)
  src->bus_ack(src->irq, src->bus_ack_arg);
}
