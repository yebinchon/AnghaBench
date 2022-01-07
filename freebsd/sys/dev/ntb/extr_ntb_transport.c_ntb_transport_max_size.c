
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {unsigned int tx_max_frame; } ;
struct ntb_payload_header {int dummy; } ;



unsigned int
ntb_transport_max_size(struct ntb_transport_qp *qp)
{

 return (qp->tx_max_frame - sizeof(struct ntb_payload_header));
}
