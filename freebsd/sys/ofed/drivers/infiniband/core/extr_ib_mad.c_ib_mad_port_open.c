
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_port_private {int port_num; int * qp_info; int cq; int pd; int wq; int port_list; struct ib_device* device; int agent_list; int reg_lock; } ;
struct ib_device {int dev; } ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IB_MGMT_MAD_SIZE ;
 int IB_POLL_WORKQUEUE ;
 int IB_QPT_GSI ;
 int IB_QPT_SMI ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ OPA_MGMT_MAD_SIZE ;
 int PTR_ERR (int ) ;
 scalar_t__ WARN_ON (int) ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int cleanup_recv_queue (int *) ;
 int create_mad_qp (int *,int ) ;
 int destroy_mad_qp (int *) ;
 int destroy_workqueue (int ) ;
 int dev_err (int *,char*) ;
 int ib_alloc_cq (struct ib_device*,struct ib_mad_port_private*,int,int ,int ) ;
 int ib_alloc_pd (struct ib_device*,int ) ;
 int ib_dealloc_pd (int ) ;
 int ib_free_cq (int ) ;
 int ib_mad_port_list ;
 int ib_mad_port_list_lock ;
 int ib_mad_port_start (struct ib_mad_port_private*) ;
 int init_mad_qp (struct ib_mad_port_private*,int *) ;
 int kfree (struct ib_mad_port_private*) ;
 struct ib_mad_port_private* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int mad_recvq_size ;
 int mad_sendq_size ;
 int rdma_cap_ib_smi (struct ib_device*,int) ;
 scalar_t__ rdma_cap_opa_mad (struct ib_device*,int) ;
 scalar_t__ rdma_max_mad_size (struct ib_device*,int) ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ib_mad_port_open(struct ib_device *device,
       int port_num)
{
 int ret, cq_size;
 struct ib_mad_port_private *port_priv;
 unsigned long flags;
 char name[sizeof "ib_mad123"];
 int has_smi;

 if (WARN_ON(rdma_max_mad_size(device, port_num) < IB_MGMT_MAD_SIZE))
  return -EFAULT;

 if (WARN_ON(rdma_cap_opa_mad(device, port_num) &&
      rdma_max_mad_size(device, port_num) < OPA_MGMT_MAD_SIZE))
  return -EFAULT;


 port_priv = kzalloc(sizeof *port_priv, GFP_KERNEL);
 if (!port_priv) {
  dev_err(&device->dev, "No memory for ib_mad_port_private\n");
  return -ENOMEM;
 }

 port_priv->device = device;
 port_priv->port_num = port_num;
 spin_lock_init(&port_priv->reg_lock);
 INIT_LIST_HEAD(&port_priv->agent_list);
 init_mad_qp(port_priv, &port_priv->qp_info[0]);
 init_mad_qp(port_priv, &port_priv->qp_info[1]);

 cq_size = mad_sendq_size + mad_recvq_size;
 has_smi = rdma_cap_ib_smi(device, port_num);
 if (has_smi)
  cq_size *= 2;

 port_priv->cq = ib_alloc_cq(port_priv->device, port_priv, cq_size, 0,
   IB_POLL_WORKQUEUE);
 if (IS_ERR(port_priv->cq)) {
  dev_err(&device->dev, "Couldn't create ib_mad CQ\n");
  ret = PTR_ERR(port_priv->cq);
  goto error3;
 }

 port_priv->pd = ib_alloc_pd(device, 0);
 if (IS_ERR(port_priv->pd)) {
  dev_err(&device->dev, "Couldn't create ib_mad PD\n");
  ret = PTR_ERR(port_priv->pd);
  goto error4;
 }

 if (has_smi) {
  ret = create_mad_qp(&port_priv->qp_info[0], IB_QPT_SMI);
  if (ret)
   goto error6;
 }
 ret = create_mad_qp(&port_priv->qp_info[1], IB_QPT_GSI);
 if (ret)
  goto error7;

 snprintf(name, sizeof name, "ib_mad%d", port_num);
 port_priv->wq = alloc_ordered_workqueue(name, WQ_MEM_RECLAIM);
 if (!port_priv->wq) {
  ret = -ENOMEM;
  goto error8;
 }

 spin_lock_irqsave(&ib_mad_port_list_lock, flags);
 list_add_tail(&port_priv->port_list, &ib_mad_port_list);
 spin_unlock_irqrestore(&ib_mad_port_list_lock, flags);

 ret = ib_mad_port_start(port_priv);
 if (ret) {
  dev_err(&device->dev, "Couldn't start port\n");
  goto error9;
 }

 return 0;

error9:
 spin_lock_irqsave(&ib_mad_port_list_lock, flags);
 list_del_init(&port_priv->port_list);
 spin_unlock_irqrestore(&ib_mad_port_list_lock, flags);

 destroy_workqueue(port_priv->wq);
error8:
 destroy_mad_qp(&port_priv->qp_info[1]);
error7:
 destroy_mad_qp(&port_priv->qp_info[0]);
error6:
 ib_dealloc_pd(port_priv->pd);
error4:
 ib_free_cq(port_priv->cq);
 cleanup_recv_queue(&port_priv->qp_info[1]);
 cleanup_recv_queue(&port_priv->qp_info[0]);
error3:
 kfree(port_priv);

 return ret;
}
