
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int INTR_ENABLE_MASK ;
 int MV88E1XXX_INTR_ENABLE ;
 int mdio_write (struct cphy*,int ,int ,int ) ;

__attribute__((used)) static int mv88e1xxx_intr_enable(struct cphy *cphy)
{
 return mdio_write(cphy, 0, MV88E1XXX_INTR_ENABLE, INTR_ENABLE_MASK);
}
