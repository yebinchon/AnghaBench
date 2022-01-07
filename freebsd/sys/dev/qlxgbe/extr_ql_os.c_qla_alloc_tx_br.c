
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int txr_idx; int * tx_br; int tx_mtx; int tx_mtx_name; } ;
typedef TYPE_1__ qla_tx_fp_t ;
struct TYPE_7__ {int pci_func; int pci_dev; } ;
typedef TYPE_2__ qla_host_t ;


 int ENOMEM ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int NUM_TX_DESCRIPTORS ;
 int QL_DPRINT1 (TYPE_2__*,int ) ;
 int * buf_ring_alloc (int ,int ,int ,int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 int snprintf (int ,int,char*,int,int) ;

__attribute__((used)) static int
qla_alloc_tx_br(qla_host_t *ha, qla_tx_fp_t *fp)
{
        snprintf(fp->tx_mtx_name, sizeof(fp->tx_mtx_name),
                "qla%d_fp%d_tx_mq_lock", ha->pci_func, fp->txr_idx);

        mtx_init(&fp->tx_mtx, fp->tx_mtx_name, ((void*)0), MTX_DEF);

        fp->tx_br = buf_ring_alloc(NUM_TX_DESCRIPTORS, M_DEVBUF,
                                   M_NOWAIT, &fp->tx_mtx);
        if (fp->tx_br == ((void*)0)) {
            QL_DPRINT1(ha, (ha->pci_dev, "buf_ring_alloc failed for "
                " fp[%d, %d]\n", ha->pci_func, fp->txr_idx));
            return (-ENOMEM);
        }
        return 0;
}
