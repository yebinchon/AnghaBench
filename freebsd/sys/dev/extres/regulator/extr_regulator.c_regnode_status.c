
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {int dummy; } ;


 int REGNODE_STATUS (struct regnode*,int*) ;
 int REGNODE_UNLOCK (struct regnode*) ;
 int REGNODE_XLOCK (struct regnode*) ;
 int REG_TOPO_ASSERT () ;

int
regnode_status(struct regnode *regnode, int *status)
{
 int rv;

 REG_TOPO_ASSERT();

 REGNODE_XLOCK(regnode);
 rv = REGNODE_STATUS(regnode, status);
 REGNODE_UNLOCK(regnode);
 return (rv);
}
