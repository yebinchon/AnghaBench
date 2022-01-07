
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct qlnx_fastpath {int * txq; int rxq; int sb_info; } ;
struct TYPE_6__ {int num_tc; } ;
typedef TYPE_1__ qlnx_host_t ;


 int qlnx_free_mem_rxq (TYPE_1__*,int ) ;
 int qlnx_free_mem_sb (TYPE_1__*,int ) ;
 int qlnx_free_mem_txq (TYPE_1__*,struct qlnx_fastpath*,int ) ;

__attribute__((used)) static void
qlnx_free_mem_fp(qlnx_host_t *ha, struct qlnx_fastpath *fp)
{
        int tc;

        qlnx_free_mem_sb(ha, fp->sb_info);

        qlnx_free_mem_rxq(ha, fp->rxq);

        for (tc = 0; tc < ha->num_tc; tc++)
                qlnx_free_mem_txq(ha, fp, fp->txq[tc]);

 return;
}
