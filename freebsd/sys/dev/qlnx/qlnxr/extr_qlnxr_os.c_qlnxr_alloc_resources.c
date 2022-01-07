
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int uint16_t ;
struct regpair {int dummy; } ;
struct qlnxr_dev {int num_cnq; TYPE_2__* ha; TYPE_4__* cnq_array; TYPE_4__* sb_array; scalar_t__ sb_start; int rdma_ctx; int qpidr; int sgid_lock; int idr_lock; TYPE_4__* sgid_tbl; } ;
struct qlnxr_cnq {int dummy; } ;
struct ecore_sb_info {int dummy; } ;
struct TYPE_8__ {int pci_func; int cdev; } ;
typedef TYPE_2__ qlnx_host_t ;
struct TYPE_9__ {int index; int name; TYPE_1__* sb_virt; int * hw_cons_ptr; struct TYPE_9__* sb; struct qlnxr_dev* dev; int pbl; } ;
struct TYPE_7__ {int * pi_array; } ;


 int ECORE_CHAIN_CNT_TYPE_U16 ;
 int ECORE_CHAIN_MODE_PBL ;
 int ECORE_CHAIN_USE_TO_CONSUME_PRODUCE ;
 int ECORE_RDMA_MAX_CNQ_SIZE ;
 size_t ECORE_ROCE_PROTOCOL_INDEX ;
 int ENOMEM ;
 int MTX_DEF ;
 int QLNXR_MAX_MSIX ;
 int QLNXR_MAX_SGID ;
 int QLNXR_ROCE_MAX_CNQ_SIZE ;
 int QL_DPRINT12 (TYPE_2__*,char*,...) ;
 int bzero (TYPE_4__*,int) ;
 int ecore_chain_alloc (int *,int ,int ,int ,int ,int,int *,int *) ;
 scalar_t__ ecore_rdma_get_sb_id (int ,int ) ;
 int idr_init (int *) ;
 int min_t (int ,int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int qlnx_alloc_mem_sb (TYPE_2__*,TYPE_4__*,scalar_t__) ;
 int qlnxr_free_resources (struct qlnxr_dev*) ;
 int sprintf (int ,char*,int,int) ;
 int u32 ;

__attribute__((used)) static int
qlnxr_alloc_resources(struct qlnxr_dev *dev)
{
 uint16_t n_entries;
 int i, rc;
 qlnx_host_t *ha;

 ha = dev->ha;

        QL_DPRINT12(ha, "enter\n");

        bzero(dev->sgid_tbl, (sizeof (union ib_gid) * QLNXR_MAX_SGID));

        mtx_init(&dev->idr_lock, "idr_lock", ((void*)0), MTX_DEF);
        mtx_init(&dev->sgid_lock, "sgid_lock", ((void*)0), MTX_DEF);

        idr_init(&dev->qpidr);

        bzero(dev->sb_array, (sizeof (struct ecore_sb_info) * QLNXR_MAX_MSIX));
        bzero(dev->cnq_array, (sizeof (struct qlnxr_cnq) * QLNXR_MAX_MSIX));

        dev->sb_start = ecore_rdma_get_sb_id(dev->rdma_ctx, 0);

        QL_DPRINT12(ha, "dev->sb_start = 0x%x\n", dev->sb_start);



        n_entries = min_t(u32, ECORE_RDMA_MAX_CNQ_SIZE, QLNXR_ROCE_MAX_CNQ_SIZE);

        for (i = 0; i < dev->num_cnq; i++) {
                rc = qlnx_alloc_mem_sb(dev->ha, &dev->sb_array[i],
                                       dev->sb_start + i);
                if (rc)
                        goto qlnxr_alloc_resources_exit;

                rc = ecore_chain_alloc(&dev->ha->cdev,
                                ECORE_CHAIN_USE_TO_CONSUME_PRODUCE,
                                ECORE_CHAIN_MODE_PBL,
                                ECORE_CHAIN_CNT_TYPE_U16,
                                n_entries,
                                sizeof(struct regpair *),
                                &dev->cnq_array[i].pbl,
                                ((void*)0));


                dev->cnq_array[i].dev = dev;
                dev->cnq_array[i].sb = &dev->sb_array[i];
                dev->cnq_array[i].hw_cons_ptr =
                        &(dev->sb_array[i].sb_virt->pi_array[ECORE_ROCE_PROTOCOL_INDEX]);
                dev->cnq_array[i].index = i;
                sprintf(dev->cnq_array[i].name, "qlnxr%d@pci:%d",
                        i, (dev->ha->pci_func));

        }

 QL_DPRINT12(ha, "exit\n");
        return 0;

qlnxr_alloc_resources_exit:

 qlnxr_free_resources(dev);

 QL_DPRINT12(ha, "exit -ENOMEM\n");
        return -ENOMEM;
}
