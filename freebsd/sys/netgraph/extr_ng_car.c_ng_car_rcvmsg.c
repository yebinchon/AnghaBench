
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {TYPE_3__ header; scalar_t__ data; } ;
struct TYPE_13__ {int opt; int cir; int pir; int cbs; int ebs; int mode; } ;
struct ng_car_bulkstats {TYPE_5__ upstream; TYPE_5__ downstream; } ;
struct ng_car_bulkconf {TYPE_5__ upstream; TYPE_5__ downstream; } ;
typedef TYPE_4__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_10__ {int tc; int te; TYPE_5__ conf; TYPE_5__ stats; } ;
struct TYPE_9__ {int tc; int te; TYPE_5__ conf; TYPE_5__ stats; } ;
struct TYPE_12__ {TYPE_2__ lower; TYPE_1__ upper; } ;


 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;






 int NG_CAR_COUNT_PACKETS ;
 int NG_CAR_RED ;
 int NG_CAR_SHAPE ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_4__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int bcopy (TYPE_5__*,TYPE_5__*,int) ;
 int bzero (TYPE_5__*,int) ;

__attribute__((used)) static int
ng_car_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 132:
  switch (msg->header.cmd) {
  case 129:
  case 131:
   {
    struct ng_car_bulkstats *bstats;

    NG_MKRESPONSE(resp, msg,
     sizeof(*bstats), M_NOWAIT);
    if (resp == ((void*)0)) {
     error = ENOMEM;
     break;
    }
    bstats = (struct ng_car_bulkstats *)resp->data;

    bcopy(&priv->upper.stats, &bstats->downstream,
        sizeof(bstats->downstream));
    bcopy(&priv->lower.stats, &bstats->upstream,
        sizeof(bstats->upstream));
   }
   if (msg->header.cmd == 129)
    break;
  case 133:
   bzero(&priv->upper.stats,
    sizeof(priv->upper.stats));
   bzero(&priv->lower.stats,
    sizeof(priv->lower.stats));
   break;
  case 130:
   {
    struct ng_car_bulkconf *bconf;

    NG_MKRESPONSE(resp, msg,
     sizeof(*bconf), M_NOWAIT);
    if (resp == ((void*)0)) {
     error = ENOMEM;
     break;
    }
    bconf = (struct ng_car_bulkconf *)resp->data;

    bcopy(&priv->upper.conf, &bconf->downstream,
        sizeof(bconf->downstream));
    bcopy(&priv->lower.conf, &bconf->upstream,
        sizeof(bconf->upstream));

    if (bconf->downstream.opt & NG_CAR_COUNT_PACKETS) {
        bconf->downstream.cir /= 1024;
        bconf->downstream.pir /= 1024;
        bconf->downstream.cbs /= 128;
        bconf->downstream.ebs /= 128;
    }
    if (bconf->upstream.opt & NG_CAR_COUNT_PACKETS) {
        bconf->upstream.cir /= 1024;
        bconf->upstream.pir /= 1024;
        bconf->upstream.cbs /= 128;
        bconf->upstream.ebs /= 128;
    }
   }
   break;
  case 128:
   {
    struct ng_car_bulkconf *const bconf =
    (struct ng_car_bulkconf *)msg->data;


    if (msg->header.arglen != sizeof(*bconf)) {
     error = EINVAL;
     break;
    }

    if (bconf->downstream.opt & NG_CAR_COUNT_PACKETS) {
        bconf->downstream.cir *= 1024;
        bconf->downstream.pir *= 1024;
        bconf->downstream.cbs *= 125;
        bconf->downstream.ebs *= 125;
    }
    if (bconf->upstream.opt & NG_CAR_COUNT_PACKETS) {
        bconf->upstream.cir *= 1024;
        bconf->upstream.pir *= 1024;
        bconf->upstream.cbs *= 125;
        bconf->upstream.ebs *= 125;
    }
    if ((bconf->downstream.cir > 1000000000) ||
        (bconf->downstream.pir > 1000000000) ||
        (bconf->upstream.cir > 1000000000) ||
        (bconf->upstream.pir > 1000000000) ||
        (bconf->downstream.cbs == 0 &&
     bconf->downstream.ebs == 0) ||
        (bconf->upstream.cbs == 0 &&
     bconf->upstream.ebs == 0))
    {
     error = EINVAL;
     break;
    }
    if ((bconf->upstream.mode == NG_CAR_SHAPE) &&
        (bconf->upstream.cir == 0)) {
     error = EINVAL;
     break;
    }
    if ((bconf->downstream.mode == NG_CAR_SHAPE) &&
        (bconf->downstream.cir == 0)) {
     error = EINVAL;
     break;
    }


    bcopy(&bconf->downstream, &priv->upper.conf,
        sizeof(priv->upper.conf));
        priv->upper.tc = priv->upper.conf.cbs;
    if (priv->upper.conf.mode == NG_CAR_RED ||
        priv->upper.conf.mode == NG_CAR_SHAPE) {
     priv->upper.te = 0;
    } else {
     priv->upper.te = priv->upper.conf.ebs;
    }


    bcopy(&bconf->upstream, &priv->lower.conf,
        sizeof(priv->lower.conf));
        priv->lower.tc = priv->lower.conf.cbs;
    if (priv->lower.conf.mode == NG_CAR_RED ||
        priv->lower.conf.mode == NG_CAR_SHAPE) {
     priv->lower.te = 0;
    } else {
     priv->lower.te = priv->lower.conf.ebs;
    }
   }
   break;
  default:
   error = EINVAL;
   break;
  }
  break;
 default:
  error = EINVAL;
  break;
 }
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
