
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uarc_size; } ;
struct mthca_dev {TYPE_3__* db_tab; TYPE_1__ uar_table; } ;
struct TYPE_6__ {int npages; int min_group2; TYPE_2__* page; scalar_t__ max_group1; int mutex; } ;
struct TYPE_5__ {int * db_rec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MTHCA_ICM_PAGE_SIZE ;
 int kfree (TYPE_3__*) ;
 void* kmalloc (int,int ) ;
 int mthca_is_memfree (struct mthca_dev*) ;
 int mutex_init (int *) ;

int mthca_init_db_tab(struct mthca_dev *dev)
{
 int i;

 if (!mthca_is_memfree(dev))
  return 0;

 dev->db_tab = kmalloc(sizeof *dev->db_tab, GFP_KERNEL);
 if (!dev->db_tab)
  return -ENOMEM;

 mutex_init(&dev->db_tab->mutex);

 dev->db_tab->npages = dev->uar_table.uarc_size / MTHCA_ICM_PAGE_SIZE;
 dev->db_tab->max_group1 = 0;
 dev->db_tab->min_group2 = dev->db_tab->npages - 1;

 dev->db_tab->page = kmalloc(dev->db_tab->npages *
        sizeof *dev->db_tab->page,
        GFP_KERNEL);
 if (!dev->db_tab->page) {
  kfree(dev->db_tab);
  return -ENOMEM;
 }

 for (i = 0; i < dev->db_tab->npages; ++i)
  dev->db_tab->page[i].db_rec = ((void*)0);

 return 0;
}
