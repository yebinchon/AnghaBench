
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int reg_errcode_t ;
struct TYPE_5__ {int idx; } ;
struct TYPE_6__ {scalar_t__ type; int opt_subexp; TYPE_1__ opr; } ;
struct TYPE_7__ {TYPE_2__ token; } ;
typedef TYPE_3__ bin_tree_t ;


 int REG_NOERROR ;
 scalar_t__ SUBEXP ;

__attribute__((used)) static reg_errcode_t
mark_opt_subexp (void *extra, bin_tree_t *node)
{
  int idx = (int) (intptr_t) extra;
  if (node->token.type == SUBEXP && node->token.opr.idx == idx)
    node->token.opt_subexp = 1;

  return REG_NOERROR;
}
