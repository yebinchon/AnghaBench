
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regnode {scalar_t__ ref_cnt; int name; } ;
typedef TYPE_1__* regulator_t ;
struct TYPE_3__ {struct regnode* regnode; } ;


 int KASSERT (int,char*) ;
 int REGNODE_CHECK_VOLTAGE (struct regnode*,int) ;
 int REG_TOPO_SLOCK () ;
 int REG_TOPO_UNLOCK () ;

int
regulator_check_voltage(regulator_t reg, int uvolt)
{
 int rv;
 struct regnode *regnode;

 regnode = reg->regnode;
 KASSERT(regnode->ref_cnt > 0,
    ("Attempt to access unreferenced regulator: %s\n", regnode->name));

 REG_TOPO_SLOCK();
 rv = REGNODE_CHECK_VOLTAGE(regnode, uvolt);
 REG_TOPO_UNLOCK();
 return (rv);
}
