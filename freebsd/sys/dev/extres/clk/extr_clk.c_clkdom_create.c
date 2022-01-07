
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clkdom {int ofw_mapper; int clknode_list; int dev; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int M_CLOCK ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct clkdom*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int TAILQ_INIT (int *) ;
 int clkdom_sysctl ;
 int clknode_default_ofw_map ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 struct clkdom* malloc (int,int ,int) ;

struct clkdom *
clkdom_create(device_t dev)
{
 struct clkdom *clkdom;

 clkdom = malloc(sizeof(struct clkdom), M_CLOCK, M_WAITOK | M_ZERO);
 clkdom->dev = dev;
 TAILQ_INIT(&clkdom->clknode_list);




 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
   SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
   OID_AUTO, "clocks",
   CTLTYPE_STRING | CTLFLAG_RD,
      clkdom, 0, clkdom_sysctl,
      "A",
      "Clock list for the domain");

 return (clkdom);
}
