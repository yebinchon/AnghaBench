
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uverbs_device {int comp; } ;


 int complete (int *) ;

__attribute__((used)) static void ib_uverbs_comp_dev(struct ib_uverbs_device *dev)
{
 complete(&dev->comp);
}
