
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_4__ {int ipi_count; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int EPERM ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int INP_INFO_WLOCK (TYPE_1__*) ;
 int INP_INFO_WUNLOCK (TYPE_1__*) ;
 int IPPROTO_DIVERT ;



 int PF_INET ;
 int SOCK_RAW ;
 TYPE_1__ V_divcbinfo ;
 int div_destroy (int *) ;
 int div_protosw ;
 int div_zone_change ;
 int * divert_packet ;
 int ip_divert_event_tag ;
 int * ip_divert_ptr ;
 int maxsockets_change ;
 int pf_proto_register (int ,int *) ;
 int pf_proto_unregister (int ,int ,int ) ;

__attribute__((used)) static int
div_modevent(module_t mod, int type, void *unused)
{
 int err = 0;

 switch (type) {
 case 130:





  err = pf_proto_register(PF_INET, &div_protosw);
  if (err != 0)
   return (err);
  ip_divert_ptr = divert_packet;
  ip_divert_event_tag = EVENTHANDLER_REGISTER(maxsockets_change,
      div_zone_change, ((void*)0), EVENTHANDLER_PRI_ANY);
  break;
 case 129:





  err = EPERM;
  break;
 case 128:
  INP_INFO_WLOCK(&V_divcbinfo);
  if (V_divcbinfo.ipi_count != 0) {
   err = EBUSY;
   INP_INFO_WUNLOCK(&V_divcbinfo);
   break;
  }
  ip_divert_ptr = ((void*)0);
  err = pf_proto_unregister(PF_INET, IPPROTO_DIVERT, SOCK_RAW);
  INP_INFO_WUNLOCK(&V_divcbinfo);

  div_destroy(((void*)0));

  EVENTHANDLER_DEREGISTER(maxsockets_change, ip_divert_event_tag);
  break;
 default:
  err = EOPNOTSUPP;
  break;
 }
 return err;
}
