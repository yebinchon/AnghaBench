
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int
phynode_method_enable(struct phynode *phynode, bool enable)
{

 if (!enable)
  return (ENXIO);

 return (0);
}
