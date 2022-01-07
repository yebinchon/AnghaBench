
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_smp {int dummy; } ;
struct TYPE_5__ {TYPE_3__* mad; } ;
struct ib_mad_recv_wc {TYPE_2__ recv_buf; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_4__ {scalar_t__ mgmt_class; int attr_id; } ;
struct TYPE_6__ {TYPE_1__ mad_hdr; } ;


 scalar_t__ attr_id ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ mgmt_class ;
 int print_smp (struct ib_smp*) ;
 int printk (char*) ;
 int smp ;

__attribute__((used)) static void recv_smi_handler(struct ib_mad_agent *mad_agent,
        struct ib_mad_recv_wc *mad_recv_wc)
{
 if (!smp && mad_recv_wc->recv_buf.mad->mad_hdr.mgmt_class != mgmt_class)
  return;
 if (attr_id && be16_to_cpu(mad_recv_wc->recv_buf.mad->mad_hdr.attr_id) != attr_id)
  return;

 printk("Madeye:recv SMP\n");
 print_smp((struct ib_smp *)&mad_recv_wc->recv_buf.mad->mad_hdr);
}
