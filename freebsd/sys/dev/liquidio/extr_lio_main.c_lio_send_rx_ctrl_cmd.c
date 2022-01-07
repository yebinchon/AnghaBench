
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int param1; int cmd; } ;
union octeon_cmd {TYPE_1__ s; scalar_t__ cmd64; } ;
typedef int uint64_t ;
struct TYPE_10__ {int rx_on; } ;
struct octeon_device {TYPE_5__ props; } ;
struct lio_soft_command {int wait_time; struct lio_soft_command* callback_arg; int callback; int iq_no; scalar_t__ ctxptr; scalar_t__ virtdptr; } ;
struct lio_rx_ctl_context {scalar_t__ cond; int octeon_id; } ;
struct TYPE_9__ {TYPE_3__* txpciq; } ;
struct lio {TYPE_4__ linfo; scalar_t__ oct_dev; } ;
struct TYPE_7__ {int q_no; } ;
struct TYPE_8__ {TYPE_2__ s; } ;


 int LIO_CMD_RX_CTL ;
 int LIO_IQ_SEND_FAILED ;
 int LIO_OPCODE_NIC ;
 int LIO_OPCODE_NIC_CMD ;
 int OCTEON_CMD_SIZE ;
 struct lio_soft_command* lio_alloc_soft_command (struct octeon_device*,int,int,int) ;
 int lio_dev_err (struct octeon_device*,char*) ;
 int lio_free_soft_command (struct octeon_device*,struct lio_soft_command*) ;
 int lio_get_device_id (struct octeon_device*) ;
 int lio_prepare_soft_command (struct octeon_device*,struct lio_soft_command*,int ,int ,int ,int ,int ) ;
 int lio_rx_ctl_callback ;
 int lio_send_soft_command (struct octeon_device*,struct lio_soft_command*) ;
 int lio_sleep_cond (struct octeon_device*,scalar_t__*) ;
 int lio_swap_8B_data (int *,int) ;

__attribute__((used)) static void
lio_send_rx_ctrl_cmd(struct lio *lio, int start_stop)
{
 struct lio_soft_command *sc;
 struct lio_rx_ctl_context *ctx;
 union octeon_cmd *ncmd;
 struct octeon_device *oct = (struct octeon_device *)lio->oct_dev;
 int ctx_size = sizeof(struct lio_rx_ctl_context);
 int retval;

 if (oct->props.rx_on == start_stop)
  return;

 sc = lio_alloc_soft_command(oct, OCTEON_CMD_SIZE, 16, ctx_size);
 if (sc == ((void*)0))
  return;

 ncmd = (union octeon_cmd *)sc->virtdptr;
 ctx = (struct lio_rx_ctl_context *)sc->ctxptr;

 ctx->cond = 0;
 ctx->octeon_id = lio_get_device_id(oct);
 ncmd->cmd64 = 0;
 ncmd->s.cmd = LIO_CMD_RX_CTL;
 ncmd->s.param1 = start_stop;

 lio_swap_8B_data((uint64_t *)ncmd, (OCTEON_CMD_SIZE >> 3));

 sc->iq_no = lio->linfo.txpciq[0].s.q_no;

 lio_prepare_soft_command(oct, sc, LIO_OPCODE_NIC, LIO_OPCODE_NIC_CMD, 0,
     0, 0);

 sc->callback = lio_rx_ctl_callback;
 sc->callback_arg = sc;
 sc->wait_time = 5000;

 retval = lio_send_soft_command(oct, sc);
 if (retval == LIO_IQ_SEND_FAILED) {
  lio_dev_err(oct, "Failed to send RX Control message\n");
 } else {




  lio_sleep_cond(oct, &ctx->cond);
  oct->props.rx_on = start_stop;
 }

 lio_free_soft_command(oct, sc);
}
