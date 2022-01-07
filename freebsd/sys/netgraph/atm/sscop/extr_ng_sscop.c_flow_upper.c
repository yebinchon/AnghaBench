
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct priv {int flow; int sscop; } ;
struct ngm_queue_state {scalar_t__ current; scalar_t__ high_watermark; scalar_t__ max_queuelen_packets; } ;
struct TYPE_2__ {int arglen; int cmd; } ;
struct ng_mesg {TYPE_1__ header; scalar_t__ data; } ;
typedef int node_p ;


 int EINVAL ;



 struct priv* NG_NODE_PRIVATE (int ) ;
 int SSCOP_DBG_FLOW ;
 int VERBOSE (struct priv*,int ,int ) ;
 scalar_t__ sscop_window (int ,scalar_t__) ;

__attribute__((used)) static int
flow_upper(node_p node, struct ng_mesg *msg)
{
 struct ngm_queue_state *q;
 struct priv *priv = NG_NODE_PRIVATE(node);
 u_int window, space;

 if (msg->header.arglen != sizeof(struct ngm_queue_state))
  return (EINVAL);
 q = (struct ngm_queue_state *)msg->data;

 switch (msg->header.cmd) {

   case 130:
  if (priv->flow) {
   VERBOSE(priv, SSCOP_DBG_FLOW, (priv->sscop, priv,
       "flow control stopped"));
   priv->flow = 0;
  }
  break;

   case 129:
  window = sscop_window(priv->sscop, 0);
  space = q->max_queuelen_packets - q->current;
  if (space > window) {
   VERBOSE(priv, SSCOP_DBG_FLOW, (priv->sscop, priv,
       "flow control opened window by %u messages",
       space - window));
   (void)sscop_window(priv->sscop, space - window);
  }
  priv->flow = 1;
  break;

   case 128:
  if (q->high_watermark <= q->current)
   break;
  window = sscop_window(priv->sscop, 0);
  if (priv->flow)
   space = q->max_queuelen_packets - q->current;
  else
   space = q->high_watermark - q->current;
  if (space > window) {
   VERBOSE(priv, SSCOP_DBG_FLOW, (priv->sscop, priv,
       "flow control opened window by %u messages",
       space - window));
   (void)sscop_window(priv->sscop, space - window);
  }
  priv->flow = 1;
  break;

   default:
  return (EINVAL);
 }
 return (0);
}
