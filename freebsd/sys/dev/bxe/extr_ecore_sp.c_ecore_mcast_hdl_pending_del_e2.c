
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ macs_num; } ;
struct ecore_pending_mcast_cmd {int done; TYPE_1__ data; int type; } ;
struct ecore_mcast_obj {int max_cmd_len; int (* set_one_rule ) (struct bxe_softc*,struct ecore_mcast_obj*,int,int *,int ) ;} ;
struct bxe_softc {int dummy; } ;


 int ECORE_MSG (struct bxe_softc*,char*,scalar_t__,int) ;
 int TRUE ;
 int stub1 (struct bxe_softc*,struct ecore_mcast_obj*,int,int *,int ) ;

__attribute__((used)) static inline void ecore_mcast_hdl_pending_del_e2(struct bxe_softc *sc,
 struct ecore_mcast_obj *o, struct ecore_pending_mcast_cmd *cmd_pos,
 int *line_idx)
{
 int cnt = *line_idx;

 while (cmd_pos->data.macs_num) {
  o->set_one_rule(sc, o, cnt, ((void*)0), cmd_pos->type);

  cnt++;

  cmd_pos->data.macs_num--;

    ECORE_MSG(sc, "Deleting MAC. %d left,cnt is %d\n",
      cmd_pos->data.macs_num, cnt);




  if (cnt >= o->max_cmd_len)
   break;
 }

 *line_idx = cnt;


 if (!cmd_pos->data.macs_num)
  cmd_pos->done = TRUE;
}
