
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ifp; } ;
struct octeon_device {int ifcount; int num_oqs; TYPE_1__ props; int cmd_resp_wqlock; int cmd_resp_state; } ;
struct TYPE_8__ {TYPE_3__* rxpciq; } ;
struct lio {int stats_timer; TYPE_4__ linfo; } ;
struct TYPE_6__ {int q_no; } ;
struct TYPE_7__ {TYPE_2__ s; } ;


 int LIO_DRV_OFFLINE ;
 int callout_drain (int *) ;
 struct lio* if_getsoftc (int ) ;
 int lio_destroy_nic_device (struct octeon_device*,int) ;
 int lio_dev_dbg (struct octeon_device*,char*) ;
 int lio_dev_err (struct octeon_device*,char*) ;
 int lio_unregister_droq_ops (struct octeon_device*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
lio_stop_nic_module(struct octeon_device *oct)
{
 int i, j;
 struct lio *lio;

 lio_dev_dbg(oct, "Stopping network interfaces\n");
 if (!oct->ifcount) {
  lio_dev_err(oct, "Init for Octeon was not completed\n");
  return (1);
 }

 mtx_lock(&oct->cmd_resp_wqlock);
 oct->cmd_resp_state = LIO_DRV_OFFLINE;
 mtx_unlock(&oct->cmd_resp_wqlock);

 for (i = 0; i < oct->ifcount; i++) {
  lio = if_getsoftc(oct->props.ifp);
  for (j = 0; j < oct->num_oqs; j++)
   lio_unregister_droq_ops(oct,
      lio->linfo.rxpciq[j].s.q_no);
 }

 callout_drain(&lio->stats_timer);

 for (i = 0; i < oct->ifcount; i++)
  lio_destroy_nic_device(oct, i);

 lio_dev_dbg(oct, "Network interface stopped\n");

 return (0);
}
