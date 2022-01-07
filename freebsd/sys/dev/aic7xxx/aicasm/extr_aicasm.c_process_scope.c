
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_8__ {int type; scalar_t__ begin_addr; scalar_t__ end_addr; int inner_scope_patches; TYPE_1__* patches; int inner_scope; } ;
typedef TYPE_2__ scope_t ;
struct TYPE_7__ {scalar_t__ skip_instr; scalar_t__ skip_patch; } ;


 int EX_SOFTWARE ;




 TYPE_2__* TAILQ_LAST (int *,int ) ;
 TYPE_2__* TAILQ_PREV (TYPE_2__*,int ,int ) ;
 int scope_links ;
 int scope_tailq ;
 int stop (char*,int ) ;

void
process_scope(scope_t *scope)
{





 scope_t *cur_scope;
 u_int skip_patch_count;
 u_int skip_instr_count;

 cur_scope = TAILQ_LAST(&scope->inner_scope, scope_tailq);
 skip_patch_count = 0;
 skip_instr_count = 0;
 while (cur_scope != ((void*)0)) {
  u_int patch0_patch_skip;

  patch0_patch_skip = 0;
  switch (cur_scope->type) {
  case 129:
  case 130:
   if (skip_instr_count != 0) {

    patch0_patch_skip++;
    cur_scope->patches[1].skip_patch =
        skip_patch_count + 1;
    cur_scope->patches[1].skip_instr =
        skip_instr_count;
   }


   patch0_patch_skip++;


   patch0_patch_skip += cur_scope->inner_scope_patches;

   cur_scope->patches[0].skip_patch = patch0_patch_skip;
   cur_scope->patches[0].skip_instr =
       cur_scope->end_addr - cur_scope->begin_addr;

   skip_instr_count += cur_scope->patches[0].skip_instr;

   skip_patch_count += patch0_patch_skip;
   if (cur_scope->type == 129) {
    scope->inner_scope_patches += skip_patch_count;
    skip_patch_count = 0;
           skip_instr_count = 0;
   }
   break;
  case 131:

   skip_patch_count += cur_scope->inner_scope_patches;

   skip_instr_count += cur_scope->end_addr
       - cur_scope->begin_addr;
   break;
  case 128:
   stop("Unexpected scope type encountered", EX_SOFTWARE);

  }

  cur_scope = TAILQ_PREV(cur_scope, scope_tailq, scope_links);
 }
}
