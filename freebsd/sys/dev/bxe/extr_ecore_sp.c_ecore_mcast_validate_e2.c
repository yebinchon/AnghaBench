
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_mcast_ramrod_params {int mcast_list_len; struct ecore_mcast_obj* mcast_obj; } ;
struct ecore_mcast_obj {int (* get_registry_size ) (struct ecore_mcast_obj*) ;int total_pending_num; int (* set_registry_size ) (struct ecore_mcast_obj*,int) ;} ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_mcast_cmd { ____Placeholder_ecore_mcast_cmd } ecore_mcast_cmd ;


 int ECORE_ERR (char*,int) ;
 int ECORE_INVAL ;




 int ECORE_SUCCESS ;
 int stub1 (struct ecore_mcast_obj*) ;
 int stub2 (struct ecore_mcast_obj*,int) ;
 int stub3 (struct ecore_mcast_obj*,int) ;

__attribute__((used)) static int ecore_mcast_validate_e2(struct bxe_softc *sc,
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
  break;

 case 131:
 case 130:




  o->set_registry_size(o, reg_sz + p->mcast_list_len);
  break;

 default:
  ECORE_ERR("Unknown command: %d\n", cmd);
  return ECORE_INVAL;
 }


 o->total_pending_num += p->mcast_list_len;

 return ECORE_SUCCESS;
}
