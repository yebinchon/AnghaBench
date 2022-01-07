
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ng_mesg {scalar_t__ data; } ;
typedef TYPE_1__* sc_p ;
struct TYPE_3__ {int output; int node; } ;


 int ENOBUFS ;
 int M_NOWAIT ;
 int NGM_ETHER_COOKIE ;
 int NGM_ETHER_SET_AUTOSRC ;
 int NG_MKMESSAGE (struct ng_mesg*,int ,int ,int,int ) ;
 int NG_SEND_MSG_HOOK (int,int ,struct ng_mesg*,int ,int ) ;

__attribute__((used)) static int
ng_source_set_autosrc(sc_p sc, uint32_t flag)
{
 struct ng_mesg *msg;
 int error = 0;

 NG_MKMESSAGE(msg, NGM_ETHER_COOKIE, NGM_ETHER_SET_AUTOSRC,
     sizeof (uint32_t), M_NOWAIT);
 if (msg == ((void*)0))
  return(ENOBUFS);

 *(uint32_t *)msg->data = flag;
 NG_SEND_MSG_HOOK(error, sc->node, msg, sc->output, 0);
 return (error);
}
