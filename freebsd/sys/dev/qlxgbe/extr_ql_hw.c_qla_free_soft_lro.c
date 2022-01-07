
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lro_ctrl {int dummy; } ;
struct TYPE_6__ {int num_sds_rings; TYPE_1__* sds; } ;
typedef TYPE_2__ qla_hw_t ;
struct TYPE_7__ {TYPE_2__ hw; } ;
typedef TYPE_3__ qla_host_t ;
struct TYPE_5__ {struct lro_ctrl lro; } ;


 int tcp_lro_free (struct lro_ctrl*) ;

__attribute__((used)) static void
qla_free_soft_lro(qla_host_t *ha)
{
        int i;
        qla_hw_t *hw = &ha->hw;
        struct lro_ctrl *lro;

        for (i = 0; i < hw->num_sds_rings; i++) {
                lro = &hw->sds[i].lro;
  tcp_lro_free(lro);
 }

 return;
}
