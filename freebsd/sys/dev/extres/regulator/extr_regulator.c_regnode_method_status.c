
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {int dummy; } ;


 int REGULATOR_STATUS_ENABLED ;

__attribute__((used)) static int
regnode_method_status(struct regnode *regnode, int *status)
{
 *status = REGULATOR_STATUS_ENABLED;
 return (0);
}
