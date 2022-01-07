
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nglmistat {int autod; int fixed; int* up; int* seen; int hook; int proto; } ;
struct TYPE_4__ {int typecookie; int arglen; int cmd; } ;
struct ng_mesg {char* data; TYPE_1__ header; } ;
typedef TYPE_2__* sc_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {char* protoname; int flags; int liv_rate; int* dlci_state; int seq_retries; int lmi_channel0; int lmi_channel; } ;




 int EINVAL ;
 int ENOMEM ;
 int MAXDLCI ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;




 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int NG_TEXTRESPONSE ;
 int SCF_AUTO ;
 int SCF_FIXED ;
 int sprintf (char*,char*,...) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int
nglmi_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 sc_p sc = NG_NODE_PRIVATE(node);
 struct ng_mesg *resp = ((void*)0);
 int error = 0;
 struct ng_mesg *msg;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 131:
  switch (msg->header.cmd) {
  case 128:
      {
   char *arg;
   int pos, count;

   NG_MKRESPONSE(resp, msg, NG_TEXTRESPONSE, M_NOWAIT);
   if (resp == ((void*)0)) {
    error = ENOMEM;
    break;
   }
   arg = resp->data;
   pos = sprintf(arg, "protocol %s ", sc->protoname);
   if (sc->flags & SCF_FIXED)
    pos += sprintf(arg + pos, "fixed\n");
   else if (sc->flags & SCF_AUTO)
    pos += sprintf(arg + pos, "auto-detecting\n");
   else
    pos += sprintf(arg + pos, "auto on dlci %d\n",
        (sc->lmi_channel == sc->lmi_channel0) ?
        0 : 1023);
   pos += sprintf(arg + pos,
       "keepalive period: %d seconds\n", sc->liv_rate);
   pos += sprintf(arg + pos,
       "unacknowledged keepalives: %ld\n",
       sc->seq_retries);
   for (count = 0;
        ((count <= MAXDLCI)
         && (pos < (NG_TEXTRESPONSE - 20)));
        count++) {
    if (sc->dlci_state[count]) {
     pos += sprintf(arg + pos,
            "dlci %d %s\n", count,
            (sc->dlci_state[count]
     == 132) ? "up" : "down");
    }
   }
   resp->header.arglen = pos + 1;
   break;
      }
  default:
   error = EINVAL;
   break;
  }
  break;
 case 130:
  switch (msg->header.cmd) {
  case 129:
      {
   struct nglmistat *stat;
   int k;

   NG_MKRESPONSE(resp, msg, sizeof(*stat), M_NOWAIT);
   if (!resp) {
    error = ENOMEM;
    break;
   }
   stat = (struct nglmistat *) resp->data;
   strncpy(stat->proto,
        sc->protoname, sizeof(stat->proto) - 1);
   strncpy(stat->hook,
         sc->protoname, sizeof(stat->hook) - 1);
   stat->autod = !!(sc->flags & SCF_AUTO);
   stat->fixed = !!(sc->flags & SCF_FIXED);
   for (k = 0; k <= MAXDLCI; k++) {
    switch (sc->dlci_state[k]) {
    case 132:
     stat->up[k / 8] |= (1 << (k % 8));

    case 133:
     stat->seen[k / 8] |= (1 << (k % 8));
     break;
    }
   }
   break;
      }
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
