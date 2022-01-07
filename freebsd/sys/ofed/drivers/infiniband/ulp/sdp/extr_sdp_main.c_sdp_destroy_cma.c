
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int * id; } ;


 int rdma_destroy_id (int *) ;

__attribute__((used)) static void
sdp_destroy_cma(struct sdp_sock *ssk)
{

 if (ssk->id == ((void*)0))
  return;
 rdma_destroy_id(ssk->id);
 ssk->id = ((void*)0);
}
