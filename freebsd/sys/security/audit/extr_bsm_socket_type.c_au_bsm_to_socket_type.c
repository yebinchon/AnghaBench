
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct bsm_socket_type {int bst_local_socket_type; } ;


 struct bsm_socket_type* bsm_lookup_bsm_socket_type (int ) ;

int
au_bsm_to_socket_type(u_short bsm_socket_type, int *local_socket_typep)
{
 const struct bsm_socket_type *bstp;

 bstp = bsm_lookup_bsm_socket_type(bsm_socket_type);
 if (bstp == ((void*)0) || bstp->bst_local_socket_type)
  return (-1);
 *local_socket_typep = bstp->bst_local_socket_type;
 return (0);
}
