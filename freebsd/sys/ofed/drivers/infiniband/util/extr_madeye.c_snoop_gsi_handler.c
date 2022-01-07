
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_rmpp_mad {int rmpp_hdr; } ;
struct ib_mad_send_wc {int dummy; } ;
struct ib_mad_send_buf {struct ib_mad_hdr* mad; } ;
struct ib_mad_hdr {scalar_t__ mgmt_class; int attr_id; } ;
struct ib_mad_agent {int dummy; } ;


 scalar_t__ attr_id ;
 scalar_t__ be16_to_cpu (int ) ;
 int gmp ;
 scalar_t__ is_rmpp_mad (struct ib_mad_hdr*) ;
 scalar_t__ mgmt_class ;
 int print_mad_hdr (struct ib_mad_hdr*) ;
 int print_rmpp_hdr (int *) ;
 int printk (char*) ;

__attribute__((used)) static void snoop_gsi_handler(struct ib_mad_agent *mad_agent,
         struct ib_mad_send_buf *send_buf,
         struct ib_mad_send_wc *mad_send_wc)
{
 struct ib_mad_hdr *hdr = send_buf->mad;

 if (!gmp && hdr->mgmt_class != mgmt_class)
  return;
 if (attr_id && be16_to_cpu(hdr->attr_id) != attr_id)
  return;

 printk("Madeye:sent GMP\n");
 print_mad_hdr(hdr);

 if (is_rmpp_mad(hdr))
  print_rmpp_hdr(&((struct ib_rmpp_mad *) hdr)->rmpp_hdr);
}
