
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_uvolt; int min_uvolt; } ;
struct regnode {TYPE_1__ std_param; } ;


 int ERANGE ;

__attribute__((used)) static int
regnode_method_set_voltage(struct regnode *regnode, int min_uvolt, int max_uvolt,
    int *udelay)
{

 if ((min_uvolt > regnode->std_param.max_uvolt) ||
     (max_uvolt < regnode->std_param.min_uvolt))
  return (ERANGE);
 *udelay = 0;
 return (0);
}
