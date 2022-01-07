
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct TYPE_4__ {scalar_t__ bfc_bsm_fcntl_cmd; } ;
typedef TYPE_1__ bsm_fcntl_cmd_t ;


 int bsm_fcntl_cmd_count ;
 TYPE_1__ const* bsm_fcntl_cmdtab ;

__attribute__((used)) static const bsm_fcntl_cmd_t *
bsm_lookup_bsm_fcntl_cmd(u_short bsm_fcntl_cmd)
{
 int i;

 for (i = 0; i < bsm_fcntl_cmd_count; i++) {
  if (bsm_fcntl_cmdtab[i].bfc_bsm_fcntl_cmd ==
      bsm_fcntl_cmd)
   return (&bsm_fcntl_cmdtab[i]);
 }
 return (((void*)0));
}
