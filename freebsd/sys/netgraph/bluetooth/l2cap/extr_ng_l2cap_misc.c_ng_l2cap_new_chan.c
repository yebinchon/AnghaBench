
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_int16_t ;
typedef TYPE_1__* ng_l2cap_p ;
typedef TYPE_2__* ng_l2cap_con_p ;
typedef TYPE_3__* ng_l2cap_chan_p ;
struct TYPE_15__ {scalar_t__ scid; scalar_t__ dcid; int idtype; int link_timo; int flush_timo; int oflow; void* omtu; int iflow; void* imtu; int state; TYPE_2__* con; int psm; } ;
struct TYPE_14__ {scalar_t__ linktype; } ;
struct TYPE_13__ {int chan_list; } ;


 int LIST_INSERT_HEAD (int *,TYPE_3__*,int ) ;
 int M_NETGRAPH_L2CAP ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ NG_HCI_LINK_ACL ;
 scalar_t__ NG_L2CAP_ATT_CID ;
 int NG_L2CAP_CLOSED ;
 int NG_L2CAP_FLUSH_TIMO_DEFAULT ;
 int NG_L2CAP_L2CA_IDTYPE_ATT ;
 int NG_L2CAP_L2CA_IDTYPE_SMP ;
 int NG_L2CAP_LINK_TIMO_DEFAULT ;
 void* NG_L2CAP_MTU_DEFAULT ;
 scalar_t__ NG_L2CAP_NULL_CID ;
 scalar_t__ NG_L2CAP_SMP_CID ;
 int bcopy (int ,int *,int) ;
 int bzero (TYPE_3__*,int) ;
 int free (TYPE_3__*,int ) ;
 TYPE_3__* malloc (int,int ,int) ;
 int next ;
 int ng_l2cap_con_ref (TYPE_2__*) ;
 int ng_l2cap_default_flow () ;
 scalar_t__ ng_l2cap_get_cid (TYPE_1__*,int) ;

ng_l2cap_chan_p
ng_l2cap_new_chan(ng_l2cap_p l2cap, ng_l2cap_con_p con, u_int16_t psm, int idtype)
{
 ng_l2cap_chan_p ch = ((void*)0);

 ch = malloc(sizeof(*ch), M_NETGRAPH_L2CAP,
  M_NOWAIT|M_ZERO);
 if (ch == ((void*)0))
  return (((void*)0));
 if(idtype == NG_L2CAP_L2CA_IDTYPE_ATT){
  ch->scid = ch->dcid = NG_L2CAP_ATT_CID;
 }else if(idtype == NG_L2CAP_L2CA_IDTYPE_SMP){
  ch->scid = ch->dcid = NG_L2CAP_SMP_CID;
 }else{
  ch->scid = ng_l2cap_get_cid(l2cap,
         (con->linktype!= NG_HCI_LINK_ACL));
 }

 ch->idtype = idtype;
 if (ch->scid != NG_L2CAP_NULL_CID) {

  ch->psm = psm;
  ch->con = con;
  ch->state = NG_L2CAP_CLOSED;


  ch->imtu = NG_L2CAP_MTU_DEFAULT;
  bcopy(ng_l2cap_default_flow(), &ch->iflow, sizeof(ch->iflow));

  ch->omtu = NG_L2CAP_MTU_DEFAULT;
  bcopy(ng_l2cap_default_flow(), &ch->oflow, sizeof(ch->oflow));

  ch->flush_timo = NG_L2CAP_FLUSH_TIMO_DEFAULT;
  ch->link_timo = NG_L2CAP_LINK_TIMO_DEFAULT;

  LIST_INSERT_HEAD(&l2cap->chan_list, ch, next);

  ng_l2cap_con_ref(con);
 } else {
  bzero(ch, sizeof(*ch));
  free(ch, M_NETGRAPH_L2CAP);
  ch = ((void*)0);
 }

 return (ch);
}
