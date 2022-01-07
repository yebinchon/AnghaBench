
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator {int max_uvolt; int min_uvolt; scalar_t__ enable_cnt; struct regnode* regnode; int cdev; } ;
struct TYPE_2__ {int max_uvolt; int min_uvolt; } ;
struct regnode {TYPE_1__ std_param; int consumers_list; int ref_cnt; } ;
typedef struct regulator* regulator_t ;
typedef int device_t ;


 int M_REGULATOR ;
 int M_WAITOK ;
 int M_ZERO ;
 int REGNODE_UNLOCK (struct regnode*) ;
 int REGNODE_XLOCK (struct regnode*) ;
 int REG_TOPO_ASSERT () ;
 int TAILQ_INSERT_TAIL (int *,struct regulator*,int ) ;
 int link ;
 struct regulator* malloc (int,int ,int) ;

__attribute__((used)) static regulator_t
regulator_create(struct regnode *regnode, device_t cdev)
{
 struct regulator *reg;

 REG_TOPO_ASSERT();

 reg = malloc(sizeof(struct regulator), M_REGULATOR,
     M_WAITOK | M_ZERO);
 reg->cdev = cdev;
 reg->regnode = regnode;
 reg->enable_cnt = 0;

 REGNODE_XLOCK(regnode);
 regnode->ref_cnt++;
 TAILQ_INSERT_TAIL(&regnode->consumers_list, reg, link);
 reg ->min_uvolt = regnode->std_param.min_uvolt;
 reg ->max_uvolt = regnode->std_param.max_uvolt;
 REGNODE_UNLOCK(regnode);

 return (reg);
}
