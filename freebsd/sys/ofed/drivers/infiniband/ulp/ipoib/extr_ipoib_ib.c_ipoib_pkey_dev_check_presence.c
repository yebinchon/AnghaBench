
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ipoib_dev_priv {int flags; int pkey; int port; int ca; } ;


 int IPOIB_PKEY_ASSIGNED ;
 int clear_bit (int ,int *) ;
 scalar_t__ ib_find_pkey (int ,int ,int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ipoib_pkey_dev_check_presence(struct ipoib_dev_priv *priv)
{
 u16 pkey_index = 0;

 if (ib_find_pkey(priv->ca, priv->port, priv->pkey, &pkey_index))
  clear_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);
 else
  set_bit(IPOIB_PKEY_ASSIGNED, &priv->flags);
}
