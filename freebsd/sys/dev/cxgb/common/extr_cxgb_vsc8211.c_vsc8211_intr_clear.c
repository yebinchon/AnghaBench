
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int dummy; } ;


 int VSC8211_INTR_STATUS ;
 int mdio_read (struct cphy*,int ,int ,int *) ;

__attribute__((used)) static int vsc8211_intr_clear(struct cphy *cphy)
{
 u32 val;


 return mdio_read(cphy, 0, VSC8211_INTR_STATUS, &val);
}
