
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct regnode {scalar_t__ ref_cnt; int consumers_list; int name; } ;
typedef TYPE_1__* regulator_t ;
struct TYPE_5__ {scalar_t__ enable_cnt; struct regnode* regnode; } ;


 int KASSERT (int,char*) ;
 int M_REGULATOR ;
 int REGNODE_UNLOCK (struct regnode*) ;
 int REGNODE_XLOCK (struct regnode*) ;
 int REG_TOPO_SLOCK () ;
 int REG_TOPO_UNLOCK () ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int free (TYPE_1__*,int ) ;
 int link ;
 int regnode_disable (struct regnode*) ;

int
regulator_release(regulator_t reg)
{
 struct regnode *regnode;

 regnode = reg->regnode;
 KASSERT(regnode->ref_cnt > 0,
    ("Attempt to access unreferenced regulator: %s\n", regnode->name));
 REG_TOPO_SLOCK();
 while (reg->enable_cnt > 0) {
  regnode_disable(regnode);
  reg->enable_cnt--;
 }
 REGNODE_XLOCK(regnode);
 TAILQ_REMOVE(&regnode->consumers_list, reg, link);
 regnode->ref_cnt--;
 REGNODE_UNLOCK(regnode);
 REG_TOPO_UNLOCK();

 free(reg, M_REGULATOR);
 return (0);
}
