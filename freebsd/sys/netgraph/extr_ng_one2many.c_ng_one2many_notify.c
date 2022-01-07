
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ng_mesg {int dummy; } ;
typedef TYPE_2__* priv_p ;
struct TYPE_4__ {int * hook; } ;
struct TYPE_5__ {TYPE_1__ one; int node; } ;


 int M_NOWAIT ;
 int NGM_FLOW_COOKIE ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int ,int ,int ) ;
 int NG_SEND_MSG_HOOK (int,int ,struct ng_mesg*,int *,int ) ;

__attribute__((used)) static void
ng_one2many_notify(priv_p priv, uint32_t cmd)
{
 struct ng_mesg *msg;
 int dummy_error = 0;

 if (priv->one.hook == ((void*)0))
  return;

 NG_MKMESSAGE(msg, NGM_FLOW_COOKIE, cmd, 0, M_NOWAIT);
 if (msg != ((void*)0))
  NG_SEND_MSG_HOOK(dummy_error, priv->node, msg, priv->one.hook, 0);
}
