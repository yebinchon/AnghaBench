
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {scalar_t__ ofw_node; int pdev; } ;


 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (scalar_t__) ;
 int PHYNODE_INIT (struct phynode*) ;
 int PHY_TOPO_UNLOCK () ;
 int PHY_TOPO_XLOCK () ;
 int TAILQ_INSERT_TAIL (int *,struct phynode*,int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int phylist_link ;
 int phynode_list ;
 int printf (char*,int) ;

struct phynode *
phynode_register(struct phynode *phynode)
{
 int rv;
 rv = PHYNODE_INIT(phynode);
 if (rv != 0) {
  printf("PHYNODE_INIT failed: %d\n", rv);
  return (((void*)0));
 }

 PHY_TOPO_XLOCK();
 TAILQ_INSERT_TAIL(&phynode_list, phynode, phylist_link);
 PHY_TOPO_UNLOCK();




 return (phynode);
}
