
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ports; } ;
struct mthca_dev {struct ib_mad_agent*** send_agent; TYPE_1__ limits; int ib_dev; int sm_lock; } ;
struct ib_mad_agent {int dummy; } ;


 int IB_QPT_GSI ;
 int IB_QPT_SMI ;
 scalar_t__ IS_ERR (struct ib_mad_agent*) ;
 int PTR_ERR (struct ib_mad_agent*) ;
 struct ib_mad_agent* ib_register_mad_agent (int *,int,int ,int *,int ,int ,int *,int *,int ) ;
 int ib_unregister_mad_agent (struct ib_mad_agent*) ;
 int mthca_err (struct mthca_dev*,char*,int) ;
 int mthca_update_rate (struct mthca_dev*,int) ;
 int send_handler ;
 int spin_lock_init (int *) ;

int mthca_create_agents(struct mthca_dev *dev)
{
 struct ib_mad_agent *agent;
 int p, q;
 int ret;

 spin_lock_init(&dev->sm_lock);

 for (p = 0; p < dev->limits.num_ports; ++p)
  for (q = 0; q <= 1; ++q) {
   agent = ib_register_mad_agent(&dev->ib_dev, p + 1,
            q ? IB_QPT_GSI : IB_QPT_SMI,
            ((void*)0), 0, send_handler,
            ((void*)0), ((void*)0), 0);
   if (IS_ERR(agent)) {
    ret = PTR_ERR(agent);
    goto err;
   }
   dev->send_agent[p][q] = agent;
  }


 for (p = 1; p <= dev->limits.num_ports; ++p) {
  ret = mthca_update_rate(dev, p);
  if (ret) {
   mthca_err(dev, "Failed to obtain port %d rate."
      " aborting.\n", p);
   goto err;
  }
 }

 return 0;

err:
 for (p = 0; p < dev->limits.num_ports; ++p)
  for (q = 0; q <= 1; ++q)
   if (dev->send_agent[p][q])
    ib_unregister_mad_agent(dev->send_agent[p][q]);

 return ret;
}
