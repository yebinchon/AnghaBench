
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mthca_dev {int sm_lock; int * sm_ah; struct ib_mad_agent*** send_agent; } ;
struct ib_mad_send_buf {int ah; int mad; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {scalar_t__ mgmt_class; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;


 int EINVAL ;
 int GFP_ATOMIC ;
 int IB_MGMT_BASE_VERSION ;
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ;
 int IB_MGMT_MAD_DATA ;
 int IB_MGMT_MAD_HDR ;
 scalar_t__ IS_ERR (struct ib_mad_send_buf*) ;
 struct ib_mad_send_buf* ib_create_send_mad (struct ib_mad_agent*,int,int ,int ,int ,int ,int ,int ) ;
 int ib_free_send_mad (struct ib_mad_send_buf*) ;
 int ib_post_send_mad (struct ib_mad_send_buf*,int *) ;
 int memcpy (int ,struct ib_mad const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void forward_trap(struct mthca_dev *dev,
    u8 port_num,
    const struct ib_mad *mad)
{
 int qpn = mad->mad_hdr.mgmt_class != IB_MGMT_CLASS_SUBN_LID_ROUTED;
 struct ib_mad_send_buf *send_buf;
 struct ib_mad_agent *agent = dev->send_agent[port_num - 1][qpn];
 int ret;
 unsigned long flags;

 if (agent) {
  send_buf = ib_create_send_mad(agent, qpn, 0, 0, IB_MGMT_MAD_HDR,
           IB_MGMT_MAD_DATA, GFP_ATOMIC,
           IB_MGMT_BASE_VERSION);
  if (IS_ERR(send_buf))
   return;






  spin_lock_irqsave(&dev->sm_lock, flags);
  memcpy(send_buf->mad, mad, sizeof *mad);
  if ((send_buf->ah = dev->sm_ah[port_num - 1]))
   ret = ib_post_send_mad(send_buf, ((void*)0));
  else
   ret = -EINVAL;
  spin_unlock_irqrestore(&dev->sm_lock, flags);

  if (ret)
   ib_free_send_mad(send_buf);
 }
}
