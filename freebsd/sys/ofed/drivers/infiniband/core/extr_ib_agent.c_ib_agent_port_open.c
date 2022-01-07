
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dev; } ;
struct ib_agent_port_private {void** agent; int port_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_QPT_GSI ;
 int IB_QPT_SMI ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int agent_send_handler ;
 int dev_err (int *,char*) ;
 int ib_agent_port_list ;
 int ib_agent_port_list_lock ;
 void* ib_register_mad_agent (struct ib_device*,int,int ,int *,int ,int *,int *,int *,int ) ;
 int ib_unregister_mad_agent (void*) ;
 int kfree (struct ib_agent_port_private*) ;
 struct ib_agent_port_private* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ rdma_cap_ib_smi (struct ib_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ib_agent_port_open(struct ib_device *device, int port_num)
{
 struct ib_agent_port_private *port_priv;
 unsigned long flags;
 int ret;


 port_priv = kzalloc(sizeof *port_priv, GFP_KERNEL);
 if (!port_priv) {
  dev_err(&device->dev, "No memory for ib_agent_port_private\n");
  ret = -ENOMEM;
  goto error1;
 }

 if (rdma_cap_ib_smi(device, port_num)) {

  port_priv->agent[0] = ib_register_mad_agent(device, port_num,
           IB_QPT_SMI, ((void*)0), 0,
           &agent_send_handler,
           ((void*)0), ((void*)0), 0);
  if (IS_ERR(port_priv->agent[0])) {
   ret = PTR_ERR(port_priv->agent[0]);
   goto error2;
  }
 }


 port_priv->agent[1] = ib_register_mad_agent(device, port_num,
          IB_QPT_GSI, ((void*)0), 0,
          &agent_send_handler,
          ((void*)0), ((void*)0), 0);
 if (IS_ERR(port_priv->agent[1])) {
  ret = PTR_ERR(port_priv->agent[1]);
  goto error3;
 }

 spin_lock_irqsave(&ib_agent_port_list_lock, flags);
 list_add_tail(&port_priv->port_list, &ib_agent_port_list);
 spin_unlock_irqrestore(&ib_agent_port_list_lock, flags);

 return 0;

error3:
 if (port_priv->agent[0])
  ib_unregister_mad_agent(port_priv->agent[0]);
error2:
 kfree(port_priv);
error1:
 return ret;
}
