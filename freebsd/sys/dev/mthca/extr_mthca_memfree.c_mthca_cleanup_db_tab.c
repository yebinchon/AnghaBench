
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mthca_dev {TYPE_2__* db_tab; TYPE_1__* pdev; int driver_uar; } ;
struct TYPE_4__ {int npages; struct TYPE_4__* page; int mapping; int db_rec; int used; } ;
struct TYPE_3__ {int dev; } ;


 int MTHCA_DB_REC_PER_PAGE ;
 int MTHCA_ICM_PAGE_SIZE ;
 int bitmap_empty (int ,int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (TYPE_2__*) ;
 int mthca_UNMAP_ICM (struct mthca_dev*,int ,int) ;
 int mthca_is_memfree (struct mthca_dev*) ;
 int mthca_uarc_virt (struct mthca_dev*,int *,int) ;
 int mthca_warn (struct mthca_dev*,char*,int) ;

void mthca_cleanup_db_tab(struct mthca_dev *dev)
{
 int i;

 if (!mthca_is_memfree(dev))
  return;







 for (i = 0; i < dev->db_tab->npages; ++i) {
  if (!dev->db_tab->page[i].db_rec)
   continue;

  if (!bitmap_empty(dev->db_tab->page[i].used, MTHCA_DB_REC_PER_PAGE))
   mthca_warn(dev, "Kernel UARC page %d not empty\n", i);

  mthca_UNMAP_ICM(dev, mthca_uarc_virt(dev, &dev->driver_uar, i), 1);

  dma_free_coherent(&dev->pdev->dev, MTHCA_ICM_PAGE_SIZE,
      dev->db_tab->page[i].db_rec,
      dev->db_tab->page[i].mapping);
 }

 kfree(dev->db_tab->page);
 kfree(dev->db_tab);
}
