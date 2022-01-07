
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_uvolt; int min_uvolt; } ;
struct regnode {TYPE_1__ std_param; } ;


 int ERANGE ;

int
regnode_method_check_voltage(struct regnode *regnode, int uvolt)
{

 if ((uvolt > regnode->std_param.max_uvolt) ||
     (uvolt < regnode->std_param.min_uvolt))
  return (ERANGE);
 return (0);
}
