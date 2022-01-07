
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct nm_bdg_kthread {size_t qfirst; size_t qlast; TYPE_1__* bps; } ;
struct netmap_kring {int (* nm_notify ) (struct netmap_kring*,int ) ;} ;
struct netmap_bwrap_adapter {int hwna; } ;
struct TYPE_2__ {struct netmap_bwrap_adapter* bna; } ;


 struct netmap_kring** NMR (int ,int ) ;
 int NR_RX ;
 int stub1 (struct netmap_kring*,int ) ;

__attribute__((used)) static void
netmap_bwrap_polling(void *data)
{
 struct nm_bdg_kthread *nbk = data;
 struct netmap_bwrap_adapter *bna;
 u_int qfirst, qlast, i;
 struct netmap_kring **kring0, *kring;

 if (!nbk)
  return;
 qfirst = nbk->qfirst;
 qlast = nbk->qlast;
 bna = nbk->bps->bna;
 kring0 = NMR(bna->hwna, NR_RX);

 for (i = qfirst; i < qlast; i++) {
  kring = kring0[i];
  kring->nm_notify(kring, 0);
 }
}
