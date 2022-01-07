
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {int dummy; } ;
typedef int regulator_t ;
typedef int device_t ;


 int ENODEV ;
 int REG_TOPO_SLOCK () ;
 int REG_TOPO_UNLOCK () ;
 struct regnode* regnode_find_by_id (int ,intptr_t) ;
 int regulator_create (struct regnode*,int ) ;

int
regulator_get_by_id(device_t cdev, device_t pdev, intptr_t id, regulator_t *reg)
{
 struct regnode *regnode;

 REG_TOPO_SLOCK();

 regnode = regnode_find_by_id(pdev, id);
 if (regnode == ((void*)0)) {
  REG_TOPO_UNLOCK();
  return (ENODEV);
 }
 *reg = regulator_create(regnode, cdev);
 REG_TOPO_UNLOCK();

 return (0);
}
