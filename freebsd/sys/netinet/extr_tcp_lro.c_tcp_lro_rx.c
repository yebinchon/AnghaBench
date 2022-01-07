
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct lro_ctrl {int dummy; } ;


 int tcp_lro_rx2 (struct lro_ctrl*,struct mbuf*,int ,int) ;

int
tcp_lro_rx(struct lro_ctrl *lc, struct mbuf *m, uint32_t csum)
{

 return tcp_lro_rx2(lc, m, csum, 1);
}
