
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_send_wc {int dummy; } ;
struct ib_mad_send_buf {struct ib_mad_hdr* mad; } ;
struct ib_mad_hdr {scalar_t__ mgmt_class; int attr_id; } ;
struct ib_mad_agent {int dummy; } ;


 scalar_t__ attr_id ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ mgmt_class ;
 int print_smp (struct ib_mad_hdr*) ;
 int printk (char*) ;
 int smp ;

__attribute__((used)) static void snoop_smi_handler(struct ib_mad_agent *mad_agent,
         struct ib_mad_send_buf *send_buf,
         struct ib_mad_send_wc *mad_send_wc)
{
 struct ib_mad_hdr *hdr = send_buf->mad;

 if (!smp && hdr->mgmt_class != mgmt_class)
  return;
 if (attr_id && be16_to_cpu(hdr->attr_id) != attr_id)
  return;

 printk("Madeye:sent SMP\n");
 print_smp(send_buf->mad);
}
