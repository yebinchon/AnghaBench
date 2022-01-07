
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_3__ {int (* mdio_read ) (int ,int,int) ;int phy_id; int ifp; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 int KASSERT (int,char*) ;
 int cvm_oct_mdio_read (int ,int,int) ;
 TYPE_1__* device_get_softc (int ) ;
 int stub1 (int ,int,int) ;

__attribute__((used)) static int
octe_miibus_readreg(device_t dev, int phy, int reg)
{
 cvm_oct_private_t *priv;

 priv = device_get_softc(dev);




 if (priv->mdio_read != ((void*)0))
  return (priv->mdio_read(priv->ifp, phy, reg));




 KASSERT(phy == priv->phy_id,
     ("read from phy %u but our phy is %u", phy, priv->phy_id));
 return (cvm_oct_mdio_read(priv->ifp, phy, reg));
}
