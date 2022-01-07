
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int M_WAITOK ;
 int ecookie ;
 int ip_encap_attach (int *,int *,int ) ;
 int ip_encap_detach (int ) ;
 int ip_encap_register_srcaddr (int ,int *,int ) ;
 int ip_encap_unregister_srcaddr (int ) ;
 int me_encap_cfg ;
 int me_srcaddr ;
 int me_srcaddrtab ;

__attribute__((used)) static int
memodevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  me_srcaddrtab = ip_encap_register_srcaddr(me_srcaddr,
      ((void*)0), M_WAITOK);
  ecookie = ip_encap_attach(&me_encap_cfg, ((void*)0), M_WAITOK);
  break;
 case 128:
  ip_encap_detach(ecookie);
  ip_encap_unregister_srcaddr(me_srcaddrtab);
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}
