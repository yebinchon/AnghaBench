
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct intr_map_entry {int map_data; } ;


 int M_INTRNG ;
 int free (struct intr_map_entry*,int ) ;
 int intr_free_intr_map_data (int ) ;
 struct intr_map_entry** irq_map ;
 size_t irq_map_count ;
 size_t irq_map_first_free_idx ;
 int irq_map_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,size_t) ;

void
intr_unmap_irq(u_int res_id)
{
 struct intr_map_entry *entry;

 mtx_lock(&irq_map_lock);
 if ((res_id >= irq_map_count) || (irq_map[res_id] == ((void*)0)))
  panic("Attempt to unmap invalid resource id: %u\n", res_id);
 entry = irq_map[res_id];
 irq_map[res_id] = ((void*)0);
 irq_map_first_free_idx = res_id;
 mtx_unlock(&irq_map_lock);
 intr_free_intr_map_data(entry->map_data);
 free(entry, M_INTRNG);
}
