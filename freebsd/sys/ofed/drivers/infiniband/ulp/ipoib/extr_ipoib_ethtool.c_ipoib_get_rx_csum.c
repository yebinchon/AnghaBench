
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipoib_dev_priv {int flags; } ;
struct ifnet {struct ipoib_dev_priv* if_softc; } ;


 int IPOIB_FLAG_ADMIN_CM ;
 int IPOIB_FLAG_CSUM ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 ipoib_get_rx_csum(struct ifnet *dev)
{
 struct ipoib_dev_priv *priv = dev->if_softc;
 return test_bit(IPOIB_FLAG_CSUM, &priv->flags) &&
  !test_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags);
}
