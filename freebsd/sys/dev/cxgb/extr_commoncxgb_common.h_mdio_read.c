
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int (* mdio_read ) (int ,int ,int,int,unsigned int*) ;int addr; int adapter; } ;


 int stub1 (int ,int ,int,int,unsigned int*) ;

__attribute__((used)) static inline int mdio_read(struct cphy *phy, int mmd, int reg,
       unsigned int *valp)
{
 return phy->mdio_read(phy->adapter, phy->addr, mmd, reg, valp);
}
