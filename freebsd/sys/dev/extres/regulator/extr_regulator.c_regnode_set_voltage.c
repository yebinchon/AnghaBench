
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {int dummy; } ;


 int REGNODE_SET_VOLTAGE (struct regnode*,int,int,int*) ;
 int REGNODE_UNLOCK (struct regnode*) ;
 int REGNODE_XLOCK (struct regnode*) ;
 int REG_TOPO_ASSERT () ;
 int regnode_delay (int) ;

int
regnode_set_voltage(struct regnode *regnode, int min_uvolt, int max_uvolt)
{
 int udelay;
 int rv;

 REG_TOPO_ASSERT();

 REGNODE_XLOCK(regnode);

 rv = REGNODE_SET_VOLTAGE(regnode, min_uvolt, max_uvolt, &udelay);
 if (rv == 0)
  regnode_delay(udelay);
 REGNODE_UNLOCK(regnode);
 return (rv);
}
