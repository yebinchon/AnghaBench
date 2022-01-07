
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ reg_errcode_t ;
typedef int re_node_set ;
struct TYPE_6__ {int nodes_len; TYPE_1__* eclosures; } ;
typedef TYPE_2__ re_dfa_t ;
struct TYPE_5__ {int nelem; } ;


 scalar_t__ BE (int,int ) ;
 scalar_t__ REG_NOERROR ;
 int assert (int) ;
 scalar_t__ calc_eclosure_iter (int *,TYPE_2__*,int,int) ;
 int re_node_set_free (int *) ;

__attribute__((used)) static reg_errcode_t
calc_eclosure (re_dfa_t *dfa)
{
  int node_idx, incomplete;



  incomplete = 0;

  for (node_idx = 0; ; ++node_idx)
    {
      reg_errcode_t err;
      re_node_set eclosure_elem;
      if (node_idx == dfa->nodes_len)
 {
   if (!incomplete)
     break;
   incomplete = 0;
   node_idx = 0;
 }






      if (dfa->eclosures[node_idx].nelem != 0)
 continue;

      err = calc_eclosure_iter (&eclosure_elem, dfa, node_idx, 1);
      if (BE (err != REG_NOERROR, 0))
 return err;

      if (dfa->eclosures[node_idx].nelem == 0)
 {
   incomplete = 1;
   re_node_set_free (&eclosure_elem);
 }
    }
  return REG_NOERROR;
}
