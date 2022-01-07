
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dev; } ;
struct ib_agent_port_private {scalar_t__* agent; int port_list; } ;


 int ENODEV ;
 struct ib_agent_port_private* __ib_get_agent_port (struct ib_device*,int) ;
 int dev_err (int *,char*,int) ;
 int ib_agent_port_list_lock ;
 int ib_unregister_mad_agent (scalar_t__) ;
 int kfree (struct ib_agent_port_private*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ib_agent_port_close(struct ib_device *device, int port_num)
{
 struct ib_agent_port_private *port_priv;
 unsigned long flags;

 spin_lock_irqsave(&ib_agent_port_list_lock, flags);
 port_priv = __ib_get_agent_port(device, port_num);
 if (port_priv == ((void*)0)) {
  spin_unlock_irqrestore(&ib_agent_port_list_lock, flags);
  dev_err(&device->dev, "Port %d not found\n", port_num);
  return -ENODEV;
 }
 list_del(&port_priv->port_list);
 spin_unlock_irqrestore(&ib_agent_port_list_lock, flags);

 ib_unregister_mad_agent(port_priv->agent[1]);
 if (port_priv->agent[0])
  ib_unregister_mad_agent(port_priv->agent[0]);

 kfree(port_priv);
 return 0;
}
