
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct bsm_socket_type {int bst_bsm_socket_type; } ;


 int BSM_SOCK_UNKNOWN ;
 struct bsm_socket_type* bsm_lookup_local_socket_type (int) ;

u_short
au_socket_type_to_bsm(int local_socket_type)
{
 const struct bsm_socket_type *bstp;

 bstp = bsm_lookup_local_socket_type(local_socket_type);
 if (bstp == ((void*)0))
  return (BSM_SOCK_UNKNOWN);
 return (bstp->bst_bsm_socket_type);
}
