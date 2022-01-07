
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_6__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
struct ng_etfstat {int packets_out; int packets_in; } ;
struct ng_etffilter {int ethertype; int matchhook; } ;
struct filter {int ethertype; int * match_hook; } ;
typedef int node_p ;
typedef int item_p ;
typedef int * hook_p ;
typedef TYPE_3__* etf_p ;
struct TYPE_7__ {int * hook; } ;
struct TYPE_8__ {scalar_t__ hashtable; TYPE_2__ downstream_hook; int flags; int packets_out; int packets_in; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 scalar_t__ HASH (int ) ;
 int LIST_INSERT_HEAD (scalar_t__,struct filter*,int ) ;
 int M_NETGRAPH_ETF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;




 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int) ;
 TYPE_3__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int htons (int ) ;
 struct filter* malloc (int,int ,int) ;
 int next ;
 int ng_etf_findentry (TYPE_3__* const,int ) ;
 int * ng_findhook (int ,int ) ;

__attribute__((used)) static int
ng_etf_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const etf_p etfp = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);

 switch (msg->header.typecookie) {
 case 131:
  switch (msg->header.cmd) {
  case 130:
      {
   struct ng_etfstat *stats;

   NG_MKRESPONSE(resp, msg, sizeof(*stats), M_NOWAIT);
   if (!resp) {
    error = ENOMEM;
    break;
   }
   stats = (struct ng_etfstat *) resp->data;
   stats->packets_in = etfp->packets_in;
   stats->packets_out = etfp->packets_out;
   break;
      }
  case 128:
   if (msg->header.arglen != sizeof(u_int32_t)) {
    error = EINVAL;
    break;
   }
   etfp->flags = *((u_int32_t *) msg->data);
   break;
  case 129:
   {
    struct ng_etffilter *f;
    struct filter *fil;
    hook_p hook;


    if (msg->header.arglen != sizeof(*f)) {
     error = EINVAL;
     break;
    }


    f = (struct ng_etffilter *)msg->data;
    hook = ng_findhook(node, f->matchhook);
    if (hook == ((void*)0)) {
     error = ENOENT;
     break;
    }


    if (hook == etfp->downstream_hook.hook) {
     error = EINVAL;
     break;
    }


    if (ng_etf_findentry(etfp,
      htons(f->ethertype))) {
     error = EEXIST;
     break;
    }





    fil = malloc(sizeof(*fil),
     M_NETGRAPH_ETF, M_NOWAIT | M_ZERO);
    if (fil == ((void*)0)) {
     error = ENOMEM;
     break;
    }

    fil->match_hook = hook;
    fil->ethertype = htons(f->ethertype);
    LIST_INSERT_HEAD( etfp->hashtable
     + HASH(fil->ethertype),
      fil, next);
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
 return(error);
}
