
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ifp; } ;
typedef TYPE_1__ qla_host_t ;


 int qla_hw_tx_done (TYPE_1__*) ;
 int qla_start (int ) ;

__attribute__((used)) static void
qla_tx_done(void *context, int pending)
{
 qla_host_t *ha = context;

 qla_hw_tx_done(ha);
 qla_start(ha->ifp);
}
