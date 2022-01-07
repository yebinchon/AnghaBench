
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hookinfo {void* hook_type; int hook_id; struct enc_softc* hook_udata; int * hook_helper; int hook_func; } ;
struct enc_softc {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 size_t HHOOK_IPSEC_INET ;
 size_t HHOOK_IPSEC_INET6 ;
 void* HHOOK_TYPE_IPSEC_IN ;
 void* HHOOK_TYPE_IPSEC_OUT ;
 int * V_ipsec_hhh_in ;
 int * V_ipsec_hhh_out ;
 int enc_hhook ;
 int hhook_remove_hook (int ,struct hookinfo*) ;

__attribute__((used)) static void
enc_remove_hhooks(struct enc_softc *sc)
{
 struct hookinfo hki;

 hki.hook_func = enc_hhook;
 hki.hook_helper = ((void*)0);
 hki.hook_udata = sc;
}
