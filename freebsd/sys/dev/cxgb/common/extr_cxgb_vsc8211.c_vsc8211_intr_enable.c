
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int INTR_MASK ;
 int VSC8211_INTR_ENABLE ;
 int mdio_write (struct cphy*,int ,int ,int ) ;

__attribute__((used)) static int vsc8211_intr_enable(struct cphy *cphy)
{
 return mdio_write(cphy, 0, VSC8211_INTR_ENABLE, INTR_MASK);
}
