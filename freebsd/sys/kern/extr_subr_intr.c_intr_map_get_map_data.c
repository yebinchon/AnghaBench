
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct intr_map_data {int dummy; } ;
struct TYPE_2__ {struct intr_map_data* map_data; } ;


 TYPE_1__** irq_map ;
 size_t irq_map_count ;
 int irq_map_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,size_t) ;

__attribute__((used)) static struct intr_map_data *
intr_map_get_map_data(u_int res_id)
{
 struct intr_map_data *data;

 data = ((void*)0);
 mtx_lock(&irq_map_lock);
 if (res_id >= irq_map_count || irq_map[res_id] == ((void*)0))
  panic("Attempt to copy invalid resource id: %u\n", res_id);
 data = irq_map[res_id]->map_data;
 mtx_unlock(&irq_map_lock);

 return (data);
}
