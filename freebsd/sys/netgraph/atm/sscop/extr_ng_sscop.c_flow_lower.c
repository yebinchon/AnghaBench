
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int sscop; } ;
struct ngm_queue_state {int dummy; } ;
struct TYPE_2__ {int arglen; int cmd; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef int node_p ;


 int EINVAL ;


 struct priv* NG_NODE_PRIVATE (int ) ;
 int sscop_setbusy (int ,int) ;

__attribute__((used)) static int
flow_lower(node_p node, struct ng_mesg *msg)
{
 struct priv *priv = NG_NODE_PRIVATE(node);

 if (msg->header.arglen != sizeof(struct ngm_queue_state))
  return (EINVAL);

 switch (msg->header.cmd) {

   case 129:
  sscop_setbusy(priv->sscop, 1);
  break;

   case 128:
  sscop_setbusy(priv->sscop, 1);
  break;

   default:
  return (EINVAL);
 }
 return (0);
}
