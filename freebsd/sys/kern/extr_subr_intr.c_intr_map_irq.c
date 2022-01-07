
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct intr_map_entry {intptr_t xref; int * isrc; struct intr_map_data* map_data; int dev; } ;
struct intr_map_data {int dummy; } ;
typedef int device_t ;


 int M_INTRNG ;
 int M_WAITOK ;
 int M_ZERO ;
 struct intr_map_entry** irq_map ;
 size_t irq_map_count ;
 size_t irq_map_first_free_idx ;
 int irq_map_lock ;
 struct intr_map_entry* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;

u_int
intr_map_irq(device_t dev, intptr_t xref, struct intr_map_data *data)
{
 u_int i;
 struct intr_map_entry *entry;


 entry = malloc(sizeof(*entry), M_INTRNG, M_WAITOK | M_ZERO);

 entry->dev = dev;
 entry->xref = xref;
 entry->map_data = data;
 entry->isrc = ((void*)0);

 mtx_lock(&irq_map_lock);
 for (i = irq_map_first_free_idx; i < irq_map_count; i++) {
  if (irq_map[i] == ((void*)0)) {
   irq_map[i] = entry;
   irq_map_first_free_idx = i + 1;
   mtx_unlock(&irq_map_lock);
   return (i);
  }
 }
 mtx_unlock(&irq_map_lock);


 panic("IRQ mapping table is full.");
}
