
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ typecookie; int cmd; } ;
struct ng_mesg {scalar_t__ data; TYPE_1__ header; } ;
typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef int item_p ;
typedef int hook_p ;
struct TYPE_5__ {int ngddev; } ;


 int EINVAL ;
 int ENOMEM ;
 int ERROUT (int ) ;
 int M_NOWAIT ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 scalar_t__ NGM_DEVICE_COOKIE ;

 char const* NG_DEVICE_DEVNAME ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int ,int ) ;
 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 char* devtoname (int ) ;
 int strlcpy (char*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
ng_device_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 struct ng_mesg *msg;
 struct ng_mesg *resp = ((void*)0);
 const char *dn;
 int error = 0;

 NGI_GET_MSG(item, msg);

 if (msg->header.typecookie == NGM_DEVICE_COOKIE) {
  switch (msg->header.cmd) {
  case 128:

   NG_MKRESPONSE(resp, msg,
       strlen(NG_DEVICE_DEVNAME) + 4, M_NOWAIT);

   if (resp == ((void*)0))
    ERROUT(ENOMEM);

   dn = devtoname(priv->ngddev);
   strlcpy((char *)resp->data, dn, strlen(dn) + 1);
   break;

  default:
   error = EINVAL;
   break;
  }
 } else
  error = EINVAL;

done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
