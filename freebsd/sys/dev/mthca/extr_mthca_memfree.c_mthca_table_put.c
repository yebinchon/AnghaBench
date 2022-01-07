
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_icm_table {int num_obj; int obj_size; int mutex; TYPE_1__** icm; int coherent; scalar_t__ virt; } ;
struct mthca_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ refcount; } ;


 int MTHCA_ICM_PAGE_SIZE ;
 int MTHCA_TABLE_CHUNK_SIZE ;
 int mthca_UNMAP_ICM (struct mthca_dev*,scalar_t__,int) ;
 int mthca_free_icm (struct mthca_dev*,TYPE_1__*,int ) ;
 int mthca_is_memfree (struct mthca_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mthca_table_put(struct mthca_dev *dev, struct mthca_icm_table *table, int obj)
{
 int i;

 if (!mthca_is_memfree(dev))
  return;

 i = (obj & (table->num_obj - 1)) * table->obj_size / MTHCA_TABLE_CHUNK_SIZE;

 mutex_lock(&table->mutex);

 if (--table->icm[i]->refcount == 0) {
  mthca_UNMAP_ICM(dev, table->virt + i * MTHCA_TABLE_CHUNK_SIZE,
    MTHCA_TABLE_CHUNK_SIZE / MTHCA_ICM_PAGE_SIZE);
  mthca_free_icm(dev, table->icm[i], table->coherent);
  table->icm[i] = ((void*)0);
 }

 mutex_unlock(&table->mutex);
}
