
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_3__ {int bfc_local_fcntl_cmd; } ;
typedef TYPE_1__ bsm_fcntl_cmd_t ;


 TYPE_1__* bsm_lookup_bsm_fcntl_cmd (int ) ;

int
au_bsm_to_fcntl_cmd(u_short bsm_fcntl_cmd, int *local_fcntl_cmdp)
{
 const bsm_fcntl_cmd_t *bfcp;

 bfcp = bsm_lookup_bsm_fcntl_cmd(bsm_fcntl_cmd);
 if (bfcp == ((void*)0) || bfcp->bfc_local_fcntl_cmd)
  return (-1);
 *local_fcntl_cmdp = bfcp->bfc_local_fcntl_cmd;
 return (0);
}
