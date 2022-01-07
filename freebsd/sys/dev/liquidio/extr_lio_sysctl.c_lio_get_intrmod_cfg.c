
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct octeon_intrmod_cfg {int dummy; } ;
struct octeon_device {int dummy; } ;
struct lio_soft_command {int wait_time; struct lio_soft_command* callback_arg; int callback; int iq_no; scalar_t__ virtrptr; } ;
struct lio_intrmod_resp {int dummy; } ;
struct TYPE_6__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_4__ {int q_no; } ;
struct TYPE_5__ {TYPE_1__ s; } ;


 int EINVAL ;
 int ENOMEM ;
 int LIO_IQ_SEND_FAILED ;
 int LIO_OPCODE_NIC ;
 int LIO_OPCODE_NIC_INTRMOD_PARAMS ;
 int bzero (struct lio_intrmod_resp*,int) ;
 struct lio_soft_command* lio_alloc_soft_command (struct octeon_device*,int ,int,int ) ;
 int lio_free_soft_command (struct octeon_device*,struct lio_soft_command*) ;
 int lio_get_intrmod_callback ;
 int lio_prepare_soft_command (struct octeon_device*,struct lio_soft_command*,int ,int ,int ,int ,int ) ;
 int lio_send_soft_command (struct octeon_device*,struct lio_soft_command*) ;

__attribute__((used)) static int
lio_get_intrmod_cfg(struct lio *lio, struct octeon_intrmod_cfg *intr_cfg)
{
 struct lio_soft_command *sc;
 struct lio_intrmod_resp *resp;
 struct octeon_device *oct_dev = lio->oct_dev;
 int retval;


 sc = lio_alloc_soft_command(oct_dev, 0, sizeof(struct lio_intrmod_resp),
        0);

 if (sc == ((void*)0))
  return (ENOMEM);

 resp = (struct lio_intrmod_resp *)sc->virtrptr;
 bzero(resp, sizeof(struct lio_intrmod_resp));
 sc->iq_no = lio->linfo.txpciq[0].s.q_no;

 lio_prepare_soft_command(oct_dev, sc, LIO_OPCODE_NIC,
     LIO_OPCODE_NIC_INTRMOD_PARAMS, 0, 0, 0);

 sc->callback = lio_get_intrmod_callback;
 sc->callback_arg = sc;
 sc->wait_time = 1000;

 retval = lio_send_soft_command(oct_dev, sc);
 if (retval == LIO_IQ_SEND_FAILED) {
  lio_free_soft_command(oct_dev, sc);
  return (EINVAL);
 }

 return (0);
}
