
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ipoib_dev_priv {int dummy; } ;


 int m_freem (struct mbuf*) ;

__attribute__((used)) static inline void ipoib_cm_mb_too_long(struct ipoib_dev_priv *priv, struct mbuf *mb,
      unsigned int mtu)
{
 m_freem(mb);
}
