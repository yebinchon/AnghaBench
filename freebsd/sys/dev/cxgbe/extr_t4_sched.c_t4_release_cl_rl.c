
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tx_cl_rl_params {scalar_t__ refcount; } ;
struct TYPE_8__ {int nports; } ;
struct adapter {int tc_lock; TYPE_3__** port; TYPE_1__* chip_params; TYPE_4__ params; } ;
struct TYPE_7__ {TYPE_2__* sched_params; } ;
struct TYPE_6__ {struct tx_cl_rl_params* cl_rl; } ;
struct TYPE_5__ {int nsched_cls; } ;


 int MPASS (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
t4_release_cl_rl(struct adapter *sc, int port_id, int tc_idx)
{
 struct tx_cl_rl_params *tc;

 MPASS(port_id >= 0 && port_id < sc->params.nports);
 MPASS(tc_idx >= 0 && tc_idx < sc->chip_params->nsched_cls);

 mtx_lock(&sc->tc_lock);
 tc = &sc->port[port_id]->sched_params->cl_rl[tc_idx];
 MPASS(tc->refcount > 0);
 tc->refcount--;
 mtx_unlock(&sc->tc_lock);
}
