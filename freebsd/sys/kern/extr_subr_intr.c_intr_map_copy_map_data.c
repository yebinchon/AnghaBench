
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct intr_map_data {int dummy; } ;
typedef int device_t ;
struct TYPE_4__ {intptr_t xref; int dev; TYPE_1__* map_data; } ;
struct TYPE_3__ {size_t len; } ;


 int M_INTRNG ;
 int M_WAITOK ;
 int M_ZERO ;
 TYPE_2__** irq_map ;
 size_t irq_map_count ;
 int irq_map_lock ;
 struct intr_map_data* malloc (size_t,int ,int) ;
 int memcpy (struct intr_map_data*,TYPE_1__*,size_t) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,size_t) ;

__attribute__((used)) static void
intr_map_copy_map_data(u_int res_id, device_t *map_dev, intptr_t *map_xref,
    struct intr_map_data **data)
{
 size_t len;

 len = 0;
 mtx_lock(&irq_map_lock);
 if (res_id >= irq_map_count || irq_map[res_id] == ((void*)0))
  panic("Attempt to copy invalid resource id: %u\n", res_id);
 if (irq_map[res_id]->map_data != ((void*)0))
  len = irq_map[res_id]->map_data->len;
 mtx_unlock(&irq_map_lock);

 if (len == 0)
  *data = ((void*)0);
 else
  *data = malloc(len, M_INTRNG, M_WAITOK | M_ZERO);
 mtx_lock(&irq_map_lock);
 if (irq_map[res_id] == ((void*)0))
  panic("Attempt to copy invalid resource id: %u\n", res_id);
 if (len != 0) {
  if (len != irq_map[res_id]->map_data->len)
   panic("Resource id: %u has changed.\n", res_id);
  memcpy(*data, irq_map[res_id]->map_data, len);
 }
 *map_dev = irq_map[res_id]->dev;
 *map_xref = irq_map[res_id]->xref;
 mtx_unlock(&irq_map_lock);
}
