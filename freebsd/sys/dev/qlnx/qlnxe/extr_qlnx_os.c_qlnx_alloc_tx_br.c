
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qlnx_fastpath {int rss_id; int * tx_br; int tx_mtx; int tx_mtx_name; } ;
struct TYPE_4__ {int dev_unit; } ;
typedef TYPE_1__ qlnx_host_t ;


 int ENOMEM ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int QL_DPRINT1 (TYPE_1__*,char*,int,int) ;
 int TX_RING_SIZE ;
 int * buf_ring_alloc (int ,int ,int ,int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 int snprintf (int ,int,char*,int,int) ;

__attribute__((used)) static int
qlnx_alloc_tx_br(qlnx_host_t *ha, struct qlnx_fastpath *fp)
{
 snprintf(fp->tx_mtx_name, sizeof(fp->tx_mtx_name),
  "qlnx%d_fp%d_tx_mq_lock", ha->dev_unit, fp->rss_id);

 mtx_init(&fp->tx_mtx, fp->tx_mtx_name, ((void*)0), MTX_DEF);

        fp->tx_br = buf_ring_alloc(TX_RING_SIZE, M_DEVBUF,
                                   M_NOWAIT, &fp->tx_mtx);
        if (fp->tx_br == ((void*)0)) {
  QL_DPRINT1(ha, "buf_ring_alloc failed for fp[%d, %d]\n",
   ha->dev_unit, fp->rss_id);
  return -ENOMEM;
        }
 return 0;
}
