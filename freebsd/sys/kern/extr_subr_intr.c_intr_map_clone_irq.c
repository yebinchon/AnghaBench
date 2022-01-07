
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct intr_map_data {int dummy; } ;
typedef int device_t ;


 int intr_map_copy_map_data (int ,int *,intptr_t*,struct intr_map_data**) ;
 int intr_map_irq (int ,intptr_t,struct intr_map_data*) ;

u_int
intr_map_clone_irq(u_int old_res_id)
{
 device_t map_dev;
 intptr_t map_xref;
 struct intr_map_data *data;

 intr_map_copy_map_data(old_res_id, &map_dev, &map_xref, &data);
 return (intr_map_irq(map_dev, map_xref, data));
}
