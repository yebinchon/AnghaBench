
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_13__ {TYPE_5__* mpt; int dma_handle; void** mtts; } ;
struct TYPE_14__ {TYPE_6__ arbel; } ;
struct TYPE_11__ {unsigned long long page_shift; } ;
struct TYPE_9__ {int rkey; int lkey; } ;
struct mthca_fmr {TYPE_7__ mem; TYPE_4__ attr; TYPE_2__ ibmr; int maps; } ;
struct TYPE_8__ {scalar_t__ num_mpts; } ;
struct mthca_dev {int mthca_flags; TYPE_3__* pdev; TYPE_1__ limits; } ;
struct ib_fmr {int device; } ;
struct TYPE_12__ {void* start; void* length; void* lkey; void* key; } ;
struct TYPE_10__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int MTHCA_FLAG_SINAI_OPT ;
 int MTHCA_MPT_STATUS_HW ;
 int MTHCA_MPT_STATUS_SW ;
 int MTHCA_MTT_FLAG_PRESENT ;
 scalar_t__ SINAI_FMR_KEY_INC ;
 int arbel_hw_index_to_key (int ) ;
 int arbel_key_to_hw_index (int ) ;
 void* cpu_to_be32 (int ) ;
 void* cpu_to_be64 (int) ;
 int dma_sync_single_for_cpu (int *,int ,int,int ) ;
 int dma_sync_single_for_device (int *,int ,int,int ) ;
 int mthca_check_fmr (struct mthca_fmr*,int*,int,int) ;
 struct mthca_dev* to_mdev (int ) ;
 struct mthca_fmr* to_mfmr (struct ib_fmr*) ;
 int wmb () ;

int mthca_arbel_map_phys_fmr(struct ib_fmr *ibfmr, u64 *page_list,
        int list_len, u64 iova)
{
 struct mthca_fmr *fmr = to_mfmr(ibfmr);
 struct mthca_dev *dev = to_mdev(ibfmr->device);
 u32 key;
 int i, err;

 err = mthca_check_fmr(fmr, page_list, list_len, iova);
 if (err)
  return err;

 ++fmr->maps;

 key = arbel_key_to_hw_index(fmr->ibmr.lkey);
 if (dev->mthca_flags & MTHCA_FLAG_SINAI_OPT)
  key += SINAI_FMR_KEY_INC;
 else
  key += dev->limits.num_mpts;
 fmr->ibmr.lkey = fmr->ibmr.rkey = arbel_hw_index_to_key(key);

 *(u8 *) fmr->mem.arbel.mpt = MTHCA_MPT_STATUS_SW;

 wmb();

 dma_sync_single_for_cpu(&dev->pdev->dev, fmr->mem.arbel.dma_handle,
    list_len * sizeof(u64), DMA_TO_DEVICE);

 for (i = 0; i < list_len; ++i)
  fmr->mem.arbel.mtts[i] = cpu_to_be64(page_list[i] |
           MTHCA_MTT_FLAG_PRESENT);

 dma_sync_single_for_device(&dev->pdev->dev, fmr->mem.arbel.dma_handle,
       list_len * sizeof(u64), DMA_TO_DEVICE);

 fmr->mem.arbel.mpt->key = cpu_to_be32(key);
 fmr->mem.arbel.mpt->lkey = cpu_to_be32(key);
 fmr->mem.arbel.mpt->length = cpu_to_be64(list_len * (1ull << fmr->attr.page_shift));
 fmr->mem.arbel.mpt->start = cpu_to_be64(iova);

 wmb();

 *(u8 *) fmr->mem.arbel.mpt = MTHCA_MPT_STATUS_HW;

 wmb();

 return 0;
}
