
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* ng_l2cap_cmd_p ;
typedef TYPE_2__* ng_l2cap_chan_p ;
struct TYPE_16__ {int cmd_list; } ;
struct TYPE_15__ {TYPE_6__* con; } ;
struct TYPE_14__ {int flags; TYPE_2__* ch; } ;


 int LIST_REMOVE (TYPE_2__*,int ) ;
 int M_NETGRAPH_L2CAP ;
 int NG_L2CAP_CMD_PENDING ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int bzero (TYPE_2__*,int) ;
 int free (TYPE_2__*,int ) ;
 int next ;
 int ng_l2cap_command_untimeout (TYPE_1__*) ;
 int ng_l2cap_con_unref (TYPE_6__*) ;
 int ng_l2cap_free_cmd (TYPE_1__*) ;
 int ng_l2cap_unlink_cmd (TYPE_1__*) ;

void
ng_l2cap_free_chan(ng_l2cap_chan_p ch)
{
 ng_l2cap_cmd_p f = ((void*)0), n = ((void*)0);

 f = TAILQ_FIRST(&ch->con->cmd_list);

 while (f != ((void*)0)) {
  n = TAILQ_NEXT(f, next);

  if (f->ch == ch) {
   ng_l2cap_unlink_cmd(f);
   if (f->flags & NG_L2CAP_CMD_PENDING)
    ng_l2cap_command_untimeout(f);
   ng_l2cap_free_cmd(f);
  }

  f = n;
 }

 LIST_REMOVE(ch, next);

 ng_l2cap_con_unref(ch->con);

 bzero(ch, sizeof(*ch));
 free(ch, M_NETGRAPH_L2CAP);
}
