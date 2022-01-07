
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ipoib_dev_priv {int dummy; } ;


 int m_adj (struct mbuf*,unsigned int) ;

void
ipoib_dma_mb(struct ipoib_dev_priv *priv, struct mbuf *mb, unsigned int length)
{

 m_adj(mb, -(mb->m_pkthdr.len - length));
}
