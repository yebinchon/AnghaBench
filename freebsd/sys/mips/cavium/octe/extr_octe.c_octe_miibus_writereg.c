
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_3__ {int phy_id; int ifp; int (* mdio_write ) (int ,int,int,int) ;} ;
typedef TYPE_1__ cvm_oct_private_t ;


 int KASSERT (int,char*) ;
 int cvm_oct_mdio_write (int ,int,int,int) ;
 TYPE_1__* device_get_softc (int ) ;
 int stub1 (int ,int,int,int) ;

__attribute__((used)) static int
octe_miibus_writereg(device_t dev, int phy, int reg, int val)
{
 cvm_oct_private_t *priv;

 priv = device_get_softc(dev);




 if (priv->mdio_write != ((void*)0)) {
  priv->mdio_write(priv->ifp, phy, reg, val);
  return (0);
 }




 KASSERT(phy == priv->phy_id,
     ("write to phy %u but our phy is %u", phy, priv->phy_id));
 cvm_oct_mdio_write(priv->ifp, phy, reg, val);

 return (0);
}
