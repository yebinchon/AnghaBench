
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct mthca_icm_table {int num_icm; int num_obj; int obj_size; int lowmem; int coherent; TYPE_1__** icm; int mutex; scalar_t__ virt; } ;
struct mthca_dev {int dummy; } ;
struct TYPE_4__ {int refcount; } ;


 int DIV_ROUND_UP (int,int) ;
 int GFP_HIGHUSER ;
 int GFP_KERNEL ;
 int MTHCA_ICM_PAGE_SIZE ;
 int MTHCA_TABLE_CHUNK_SIZE ;
 unsigned int PAGE_SHIFT ;
 int __GFP_NOWARN ;
 int kfree (struct mthca_icm_table*) ;
 struct mthca_icm_table* kmalloc (int,int) ;
 scalar_t__ mthca_MAP_ICM (struct mthca_dev*,TYPE_1__*,scalar_t__) ;
 int mthca_UNMAP_ICM (struct mthca_dev*,scalar_t__,int) ;
 TYPE_1__* mthca_alloc_icm (struct mthca_dev*,unsigned int,int,int) ;
 int mthca_free_icm (struct mthca_dev*,TYPE_1__*,int) ;
 int mutex_init (int *) ;

struct mthca_icm_table *mthca_alloc_icm_table(struct mthca_dev *dev,
           u64 virt, int obj_size,
           int nobj, int reserved,
           int use_lowmem, int use_coherent)
{
 struct mthca_icm_table *table;
 int obj_per_chunk;
 int num_icm;
 unsigned chunk_size;
 int i;

 obj_per_chunk = MTHCA_TABLE_CHUNK_SIZE / obj_size;
 num_icm = DIV_ROUND_UP(nobj, obj_per_chunk);

 table = kmalloc(sizeof *table + num_icm * sizeof *table->icm, GFP_KERNEL);
 if (!table)
  return ((void*)0);

 table->virt = virt;
 table->num_icm = num_icm;
 table->num_obj = nobj;
 table->obj_size = obj_size;
 table->lowmem = use_lowmem;
 table->coherent = use_coherent;
 mutex_init(&table->mutex);

 for (i = 0; i < num_icm; ++i)
  table->icm[i] = ((void*)0);

 for (i = 0; i * MTHCA_TABLE_CHUNK_SIZE < reserved * obj_size; ++i) {
  chunk_size = MTHCA_TABLE_CHUNK_SIZE;
  if ((i + 1) * MTHCA_TABLE_CHUNK_SIZE > nobj * obj_size)
   chunk_size = nobj * obj_size - i * MTHCA_TABLE_CHUNK_SIZE;

  table->icm[i] = mthca_alloc_icm(dev, chunk_size >> PAGE_SHIFT,
      (use_lowmem ? GFP_KERNEL : GFP_HIGHUSER) |
      __GFP_NOWARN, use_coherent);
  if (!table->icm[i])
   goto err;
  if (mthca_MAP_ICM(dev, table->icm[i],
      virt + i * MTHCA_TABLE_CHUNK_SIZE)) {
   mthca_free_icm(dev, table->icm[i], table->coherent);
   table->icm[i] = ((void*)0);
   goto err;
  }





  ++table->icm[i]->refcount;
 }

 return table;

err:
 for (i = 0; i < num_icm; ++i)
  if (table->icm[i]) {
   mthca_UNMAP_ICM(dev, virt + i * MTHCA_TABLE_CHUNK_SIZE,
     MTHCA_TABLE_CHUNK_SIZE / MTHCA_ICM_PAGE_SIZE);
   mthca_free_icm(dev, table->icm[i], table->coherent);
  }

 kfree(table);

 return ((void*)0);
}
