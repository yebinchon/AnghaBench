
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_mcast_ramrod_params {int mcast_list_len; } ;
struct ecore_mcast_obj {int (* set_one_rule ) (struct bxe_softc*,struct ecore_mcast_obj*,int,int *,int ) ;} ;
struct bxe_softc {int dummy; } ;


 int ECORE_MCAST_CMD_DEL ;
 int ECORE_MSG (struct bxe_softc*,char*,int) ;
 int stub1 (struct bxe_softc*,struct ecore_mcast_obj*,int,int *,int ) ;

__attribute__((used)) static inline void ecore_mcast_hdl_del(struct bxe_softc *sc,
 struct ecore_mcast_obj *o, struct ecore_mcast_ramrod_params *p,
 int *line_idx)
{
 int cnt = *line_idx, i;

 for (i = 0; i < p->mcast_list_len; i++) {
  o->set_one_rule(sc, o, cnt, ((void*)0), ECORE_MCAST_CMD_DEL);

  cnt++;

  ECORE_MSG(sc, "Deleting MAC. %d left\n",
     p->mcast_list_len - i - 1);
 }

 *line_idx = cnt;
}
