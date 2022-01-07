
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct ng_source_stats {size_t index; int width; int maxPps; int startTime; int elapsedTime; int endTime; int queueFrames; int queueOctets; } ;
struct ng_source_embed_info {size_t index; int width; int maxPps; int startTime; int elapsedTime; int endTime; int queueFrames; int queueOctets; } ;
struct ng_source_embed_cnt_info {size_t index; int width; int maxPps; int startTime; int elapsedTime; int endTime; int queueFrames; int queueOctets; } ;
struct TYPE_13__ {int typecookie; int flags; int const cmd; int arglen; } ;
struct ng_mesg {TYPE_3__ header; scalar_t__ data; } ;
typedef TYPE_4__* sc_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_11__ {int ifq_len; } ;
struct TYPE_14__ {struct ng_source_stats* embed_counter; struct ng_source_stats embed_timestamp; struct ng_source_stats stats; TYPE_2__* node; TYPE_1__ snd_queue; int queueOctets; } ;
struct TYPE_12__ {int nd_flags; } ;


 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int NGF_RESP ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_4__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int NG_SOURCE_ACTIVE ;
 size_t NG_SOURCE_COUNTERS ;
 int bcopy (struct ng_source_stats*,struct ng_source_stats*,int) ;
 int bzero (struct ng_source_stats*,int) ;
 int getmicrotime (int *) ;
 int ng_source_clr_data (TYPE_4__*) ;
 int ng_source_set_autosrc (TYPE_4__*,int ) ;
 int ng_source_start (TYPE_4__*,int ) ;
 int ng_source_stop (TYPE_4__*) ;
 int ng_source_store_output_ifp (TYPE_4__*,char*) ;
 int timevalisset (int *) ;
 int timevalsub (int *,int *) ;

__attribute__((used)) static int
ng_source_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 sc_p sc = NG_NODE_PRIVATE(node);
 struct ng_mesg *msg, *resp = ((void*)0);
 int error = 0;

 NGI_GET_MSG(item, msg);

 switch (msg->header.typecookie) {
 case 138:
  if (msg->header.flags & NGF_RESP) {
   error = EINVAL;
   break;
  }
  switch (msg->header.cmd) {
  case 135:
  case 139:
  case 137:
                    {
   struct ng_source_stats *stats;

                        if (msg->header.cmd != 139) {
                                NG_MKRESPONSE(resp, msg,
                                    sizeof(*stats), M_NOWAIT);
    if (resp == ((void*)0)) {
     error = ENOMEM;
     goto done;
    }
    sc->stats.queueOctets = sc->queueOctets;
    sc->stats.queueFrames = sc->snd_queue.ifq_len;
    if ((sc->node->nd_flags & NG_SOURCE_ACTIVE)
        && !timevalisset(&sc->stats.endTime)) {
     getmicrotime(&sc->stats.elapsedTime);
     timevalsub(&sc->stats.elapsedTime,
         &sc->stats.startTime);
    }
    stats = (struct ng_source_stats *)resp->data;
    bcopy(&sc->stats, stats, sizeof(* stats));
                        }
                        if (msg->header.cmd != 135)
    bzero(&sc->stats, sizeof(sc->stats));
      }
      break;
  case 129:
      {
   uint64_t packets;

   if (msg->header.arglen != sizeof(uint64_t)) {
    error = EINVAL;
    break;
   }

   packets = *(uint64_t *)msg->data;

   error = ng_source_start(sc, packets);

       break;
      }
  case 128:
   ng_source_stop(sc);
   break;
  case 140:
   ng_source_clr_data(sc);
   break;
  case 133:
      {
   char *ifname = (char *)msg->data;

   if (msg->header.arglen < 2) {
    error = EINVAL;
    break;
   }

   ng_source_store_output_ifp(sc, ifname);
   break;
      }
  case 132:
      {
   uint32_t pps;

   if (msg->header.arglen != sizeof(uint32_t)) {
    error = EINVAL;
    break;
   }

   pps = *(uint32_t *)msg->data;

   sc->stats.maxPps = pps;

   break;
      }
  case 130:
      {
   struct ng_source_embed_info *embed;

   if (msg->header.arglen != sizeof(*embed)) {
    error = EINVAL;
    goto done;
   }
   embed = (struct ng_source_embed_info *)msg->data;
   bcopy(embed, &sc->embed_timestamp, sizeof(*embed));

   break;
      }
  case 134:
      {
   struct ng_source_embed_info *embed;

   NG_MKRESPONSE(resp, msg, sizeof(*embed), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    goto done;
   }
   embed = (struct ng_source_embed_info *)resp->data;
   bcopy(&sc->embed_timestamp, embed, sizeof(*embed));

   break;
      }
  case 131:
      {
   struct ng_source_embed_cnt_info *embed;

   if (msg->header.arglen != sizeof(*embed)) {
    error = EINVAL;
    goto done;
   }
   embed = (struct ng_source_embed_cnt_info *)msg->data;
   if (embed->index >= NG_SOURCE_COUNTERS ||
       !(embed->width == 1 || embed->width == 2 ||
       embed->width == 4)) {
    error = EINVAL;
    goto done;
   }
   bcopy(embed, &sc->embed_counter[embed->index],
       sizeof(*embed));

   break;
      }
  case 136:
      {
   uint8_t index = *(uint8_t *)msg->data;
   struct ng_source_embed_cnt_info *embed;

   if (index >= NG_SOURCE_COUNTERS) {
    error = EINVAL;
    goto done;
   }
   NG_MKRESPONSE(resp, msg, sizeof(*embed), M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    goto done;
   }
   embed = (struct ng_source_embed_cnt_info *)resp->data;
   bcopy(&sc->embed_counter[index], embed, sizeof(*embed));

   break;
      }
  default:
   error = EINVAL;
   break;
  }
  break;
 case 142:
  if (!(msg->header.flags & NGF_RESP)) {
   error = EINVAL;
   break;
  }
  switch (msg->header.cmd) {
  case 141:
      {
   char *ifname = (char *)msg->data;

   if (msg->header.arglen < 2) {
    error = EINVAL;
    break;
   }

   if (ng_source_store_output_ifp(sc, ifname) == 0)
    ng_source_set_autosrc(sc, 0);
   break;
      }
  default:
   error = EINVAL;
  }
  break;
 default:
  error = EINVAL;
  break;
 }

done:

 NG_RESPOND_MSG(error, node, item, resp);

 NG_FREE_MSG(msg);
 return (error);
}
