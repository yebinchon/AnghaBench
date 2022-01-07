
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ inuse_count; scalar_t__ iter_idx; TYPE_2__* tokens; } ;
typedef TYPE_1__ tokarray_t ;
struct TYPE_7__ {int string; int subtype; int type; } ;
typedef TYPE_2__ tok_t ;
struct TYPE_8__ {int os; } ;
typedef TYPE_3__ ocs_hw_t ;


 int ocs_log_test (int ,char*,...) ;
 int token_subtype2s (int ) ;
 int token_type2s (int ) ;

__attribute__((used)) static void
tok_syntax(ocs_hw_t *hw, tokarray_t *tokarray)
{
 uint32_t i;
 tok_t *tok;

 ocs_log_test(hw->os, "Syntax error:\n");

 for (i = 0, tok = tokarray->tokens; (i <= tokarray->inuse_count); i++, tok++) {
  ocs_log_test(hw->os, "%s [%2d]    %-16s %-16s %s\n", (i == tokarray->iter_idx) ? ">>>" : "   ", i,
   token_type2s(tok->type), token_subtype2s(tok->subtype), tok->string);
 }
}
