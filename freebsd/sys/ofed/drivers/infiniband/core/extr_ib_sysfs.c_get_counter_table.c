
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;
struct ib_class_port_info {int capability_mask; } ;
struct attribute_group {int dummy; } ;
typedef int cpi ;


 int IB_PMA_CLASS_CAP_EXT_WIDTH ;
 int IB_PMA_CLASS_CAP_EXT_WIDTH_NOIETF ;
 int IB_PMA_CLASS_PORT_INFO ;
 scalar_t__ get_perf_mad (struct ib_device*,int,int ,struct ib_class_port_info*,int,int) ;
 struct attribute_group pma_group ;
 struct attribute_group pma_group_ext ;
 struct attribute_group pma_group_noietf ;

__attribute__((used)) static struct attribute_group *get_counter_table(struct ib_device *dev,
       int port_num)
{
 struct ib_class_port_info cpi;

 if (get_perf_mad(dev, port_num, IB_PMA_CLASS_PORT_INFO,
    &cpi, 40, sizeof(cpi)) >= 0) {
  if (cpi.capability_mask & IB_PMA_CLASS_CAP_EXT_WIDTH)

   return &pma_group_ext;

  if (cpi.capability_mask & IB_PMA_CLASS_CAP_EXT_WIDTH_NOIETF)

   return &pma_group_noietf;
 }


 return &pma_group;
}
