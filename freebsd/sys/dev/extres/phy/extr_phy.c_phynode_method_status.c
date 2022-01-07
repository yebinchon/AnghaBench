
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phynode {int dummy; } ;


 int PHY_STATUS_ENABLED ;

__attribute__((used)) static int
phynode_method_status(struct phynode *phynode, int *status)
{
 *status = PHY_STATUS_ENABLED;
 return (0);
}
