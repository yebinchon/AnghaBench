
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct octeon_device {int dummy; } ;
struct lio_soft_command {int wait_time; struct lio_soft_command* callback_arg; int callback; int iq_no; scalar_t__ virtrptr; } ;
struct lio_fw_stats_resp {int dummy; } ;
struct TYPE_6__ {TYPE_2__* txpciq; } ;
struct lio {int stats_interval; int stats_timer; TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_4__ {int q_no; } ;
struct TYPE_5__ {TYPE_1__ s; } ;


 int LIO_IQ_SEND_FAILED ;
 int LIO_OPCODE_NIC ;
 int LIO_OPCODE_NIC_PORT_STATS ;
 int bzero (struct lio_fw_stats_resp*,int) ;
 scalar_t__ callout_active (int *) ;
 scalar_t__ callout_pending (int *) ;
 int callout_schedule (int *,int ) ;
 struct lio_soft_command* lio_alloc_soft_command (struct octeon_device*,int ,int,int ) ;
 int lio_free_soft_command (struct octeon_device*,struct lio_soft_command*) ;
 int lio_fw_stats_callback ;
 int lio_ms_to_ticks (int ) ;
 int lio_prepare_soft_command (struct octeon_device*,struct lio_soft_command*,int ,int ,int ,int ,int ) ;
 int lio_send_soft_command (struct octeon_device*,struct lio_soft_command*) ;

__attribute__((used)) static void
lio_get_fw_stats(void *arg)
{
 struct lio *lio = arg;
 struct octeon_device *oct_dev = lio->oct_dev;
 struct lio_soft_command *sc;
 struct lio_fw_stats_resp *resp;
 int retval;

 if (callout_pending(&lio->stats_timer) ||
     callout_active(&lio->stats_timer) == 0)
  return;


 sc = lio_alloc_soft_command(oct_dev, 0,
        sizeof(struct lio_fw_stats_resp), 0);

 if (sc == ((void*)0))
  goto alloc_sc_failed;

 resp = (struct lio_fw_stats_resp *)sc->virtrptr;
 bzero(resp, sizeof(struct lio_fw_stats_resp));

 sc->iq_no = lio->linfo.txpciq[0].s.q_no;

 lio_prepare_soft_command(oct_dev, sc, LIO_OPCODE_NIC,
     LIO_OPCODE_NIC_PORT_STATS, 0, 0, 0);

 sc->callback = lio_fw_stats_callback;
 sc->callback_arg = sc;
 sc->wait_time = 500;

 retval = lio_send_soft_command(oct_dev, sc);
 if (retval == LIO_IQ_SEND_FAILED)
  goto send_sc_failed;

 return;

send_sc_failed:
 lio_free_soft_command(oct_dev, sc);
alloc_sc_failed:
 callout_schedule(&lio->stats_timer,
    lio_ms_to_ticks(lio->stats_interval));
}
