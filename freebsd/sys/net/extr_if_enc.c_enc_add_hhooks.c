
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hookinfo {void* hook_type; int hook_id; struct enc_softc* hook_udata; int * hook_helper; int hook_func; } ;
struct enc_softc {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EPFNOSUPPORT ;
 size_t HHOOK_IPSEC_INET ;
 size_t HHOOK_IPSEC_INET6 ;
 void* HHOOK_TYPE_IPSEC_IN ;
 void* HHOOK_TYPE_IPSEC_OUT ;
 int HHOOK_WAITOK ;
 int * V_ipsec_hhh_in ;
 int * V_ipsec_hhh_out ;
 int enc_hhook ;
 int hhook_add_hook (int ,struct hookinfo*,int ) ;

__attribute__((used)) static int
enc_add_hhooks(struct enc_softc *sc)
{
 struct hookinfo hki;
 int error;

 error = EPFNOSUPPORT;
 hki.hook_func = enc_hhook;
 hki.hook_helper = ((void*)0);
 hki.hook_udata = sc;
 return (error);
}
