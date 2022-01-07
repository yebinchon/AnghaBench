
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int dummy; } ;


 int CTR1 (int ,char*,void*) ;
 int KTR_NTB ;
 int m_freem (void*) ;

__attribute__((used)) static void
ntb_net_tx_handler(struct ntb_transport_qp *qp, void *qp_data, void *data,
    int len)
{

 m_freem(data);
 CTR1(KTR_NTB, "TX: tx_handler freeing mbuf %p", data);
}
