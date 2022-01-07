
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctx; } ;
struct iavf_sc {int dev; TYPE_1__ vsi; } ;
typedef int if_ctx_t ;


 int EWOULDBLOCK ;
 int IAVF_AQ_TIMEOUT ;
 int IAVF_FLAGS ;
 int PRI_MAX ;
 int device_printf (int ,char*,int ,int ) ;
 int iavf_dbg_vc (struct iavf_sc*,char*,int ,int ,...) ;
 int iflib_ctx_lock_get (int ) ;
 int iflib_in_detach (int ) ;
 int ixl_vc_get_op_chan (struct iavf_sc*,int ) ;
 int ixl_vc_send_cmd (struct iavf_sc*,int ) ;
 int sx_sleep (int ,int ,int ,char*,int ) ;

__attribute__((used)) static int
iavf_send_vc_msg_sleep(struct iavf_sc *sc, u32 op)
{
 int error = 0;
 if_ctx_t ctx = sc->vsi.ctx;

 error = ixl_vc_send_cmd(sc, op);
 if (error != 0) {
  iavf_dbg_vc(sc, "Error sending %b: %d\n", op, IAVF_FLAGS, error);
  return (error);
 }


 if (!iflib_in_detach(ctx)) {
  iavf_dbg_vc(sc, "Sleeping for op %b\n", op, IAVF_FLAGS);
  error = sx_sleep(ixl_vc_get_op_chan(sc, op),
      iflib_ctx_lock_get(ctx), PRI_MAX, "iavf_vc", IAVF_AQ_TIMEOUT);

  if (error == EWOULDBLOCK)
   device_printf(sc->dev, "%b timed out\n", op, IAVF_FLAGS);
 }

 return (error);
}
