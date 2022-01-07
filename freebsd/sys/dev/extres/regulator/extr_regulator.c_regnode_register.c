
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {scalar_t__ ofw_node; int pdev; } ;


 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (scalar_t__) ;
 int REGNODE_INIT (struct regnode*) ;
 int REG_TOPO_UNLOCK () ;
 int REG_TOPO_XLOCK () ;
 int TAILQ_INSERT_TAIL (int *,struct regnode*,int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int printf (char*,int) ;
 int reglist_link ;
 int regnode_list ;

struct regnode *
regnode_register(struct regnode *regnode)
{
 int rv;
 rv = REGNODE_INIT(regnode);
 if (rv != 0) {
  printf("REGNODE_INIT failed: %d\n", rv);
  return (((void*)0));
 }

 REG_TOPO_XLOCK();
 TAILQ_INSERT_TAIL(&regnode_list, regnode, reglist_link);
 REG_TOPO_UNLOCK();




 return (regnode);
}
