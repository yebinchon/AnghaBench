
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct bsm_socket_type {scalar_t__ bst_bsm_socket_type; } ;


 struct bsm_socket_type const* bsm_socket_types ;
 int bsm_socket_types_count ;

__attribute__((used)) static const struct bsm_socket_type *
bsm_lookup_bsm_socket_type(u_short bsm_socket_type)
{
 int i;

 for (i = 0; i < bsm_socket_types_count; i++) {
  if (bsm_socket_types[i].bst_bsm_socket_type ==
      bsm_socket_type)
   return (&bsm_socket_types[i]);
 }
 return (((void*)0));
}
