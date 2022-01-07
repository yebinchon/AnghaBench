
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_mcast_ramrod_params {scalar_t__ mcast_list_len; struct ecore_mcast_obj* mcast_obj; } ;
struct ecore_mcast_obj {int (* hdl_restore ) (struct bxe_softc*,struct ecore_mcast_obj*,int ,int*) ;} ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_mcast_cmd { ____Placeholder_ecore_mcast_cmd } ecore_mcast_cmd ;


 int ECORE_ERR (char*,int) ;
 int ECORE_INVAL ;



 int ECORE_MSG (struct bxe_softc*,char*,scalar_t__) ;
 int ecore_mcast_hdl_add (struct bxe_softc*,struct ecore_mcast_obj*,struct ecore_mcast_ramrod_params*,int*) ;
 int ecore_mcast_hdl_del (struct bxe_softc*,struct ecore_mcast_obj*,struct ecore_mcast_ramrod_params*,int*) ;
 int stub1 (struct bxe_softc*,struct ecore_mcast_obj*,int ,int*) ;

__attribute__((used)) static inline int ecore_mcast_handle_current_cmd(struct bxe_softc *sc,
   struct ecore_mcast_ramrod_params *p,
   enum ecore_mcast_cmd cmd,
   int start_cnt)
{
 struct ecore_mcast_obj *o = p->mcast_obj;
 int cnt = start_cnt;

 ECORE_MSG(sc, "p->mcast_list_len=%d\n", p->mcast_list_len);

 switch (cmd) {
 case 130:
  ecore_mcast_hdl_add(sc, o, p, &cnt);
  break;

 case 129:
  ecore_mcast_hdl_del(sc, o, p, &cnt);
  break;

 case 128:
  o->hdl_restore(sc, o, 0, &cnt);
  break;

 default:
  ECORE_ERR("Unknown command: %d\n", cmd);
  return ECORE_INVAL;
 }


 p->mcast_list_len = 0;

 return cnt;
}
