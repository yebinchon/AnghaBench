
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regnode {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int
regnode_method_enable(struct regnode *regnode, bool enable, int *udelay)
{

 if (!enable)
  return (ENXIO);

 *udelay = 0;
 return (0);
}
