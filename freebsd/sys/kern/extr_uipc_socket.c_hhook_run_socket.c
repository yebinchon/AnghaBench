
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_hhook_data {void* hctx; int status; int * m; struct socket* so; } ;
struct socket {int osd; int so_vnet; } ;
typedef size_t int32_t ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int HHOOKS_RUN_IF (int ,struct socket_hhook_data*,int *) ;
 int * V_socket_hhh ;

__attribute__((used)) static int inline
hhook_run_socket(struct socket *so, void *hctx, int32_t h_id)
{
 struct socket_hhook_data hhook_data = {
  .so = so,
  .hctx = hctx,
  .m = ((void*)0),
  .status = 0
 };

 CURVNET_SET(so->so_vnet);
 HHOOKS_RUN_IF(V_socket_hhh[h_id], &hhook_data, &so->osd);
 CURVNET_RESTORE();


 return (hhook_data.status);
}
