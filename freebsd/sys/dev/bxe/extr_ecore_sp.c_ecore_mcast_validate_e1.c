
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_mcast_ramrod_params {int mcast_list_len; struct ecore_mcast_obj* mcast_obj; } ;
struct ecore_mcast_obj {int (* get_registry_size ) (struct ecore_mcast_obj*) ;scalar_t__ max_cmd_len; int total_pending_num; int (* set_registry_size ) (struct ecore_mcast_obj*,scalar_t__) ;} ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_mcast_cmd { ____Placeholder_ecore_mcast_cmd } ecore_mcast_cmd ;


 int ECORE_ERR (char*,int) ;
 int ECORE_INVAL ;




 int ECORE_MSG (struct bxe_softc*,char*,scalar_t__,...) ;
 int ECORE_SUCCESS ;
 int stub1 (struct ecore_mcast_obj*) ;
 int stub2 (struct ecore_mcast_obj*,scalar_t__) ;
 int stub3 (struct ecore_mcast_obj*,scalar_t__) ;

__attribute__((used)) static int ecore_mcast_validate_e1(struct bxe_softc *sc,
       struct ecore_mcast_ramrod_params *p,
       enum ecore_mcast_cmd cmd)
{
 struct ecore_mcast_obj *o = p->mcast_obj;
 int reg_sz = o->get_registry_size(o);

 switch (cmd) {

 case 129:
  o->set_registry_size(o, 0);



 case 128:
  p->mcast_list_len = reg_sz;
    ECORE_MSG(sc, "Command %d, p->mcast_list_len=%d\n",
      cmd, p->mcast_list_len);
  break;

 case 131:
 case 130:




  if (p->mcast_list_len > o->max_cmd_len) {
   ECORE_ERR("Can't configure more than %d multicast MACs on 57710\n",
      o->max_cmd_len);
   return ECORE_INVAL;
  }




  ECORE_MSG(sc, "p->mcast_list_len=%d\n", p->mcast_list_len);
  if (p->mcast_list_len > 0)
   o->set_registry_size(o, p->mcast_list_len);

  break;

 default:
  ECORE_ERR("Unknown command: %d\n", cmd);
  return ECORE_INVAL;
 }




 if (p->mcast_list_len)
  o->total_pending_num += o->max_cmd_len;

 return ECORE_SUCCESS;
}
