
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int begin; size_t patch_func; unsigned int skip_instr; int skip_patch; } ;
typedef TYPE_1__ patch_t ;


 TYPE_1__* STAILQ_NEXT (TYPE_1__*,int ) ;
 int links ;

__attribute__((used)) static int
check_patch(patch_t **start_patch, unsigned int start_instr,
     unsigned int *skip_addr, int *func_vals)
{
 patch_t *cur_patch;

 cur_patch = *start_patch;

 while (cur_patch != ((void*)0) && start_instr == cur_patch->begin) {
  if (func_vals[cur_patch->patch_func] == 0) {
   int skip;


   *skip_addr = start_instr + cur_patch->skip_instr;
   for (skip = cur_patch->skip_patch;
        skip > 0 && cur_patch != ((void*)0);
        skip--)
    cur_patch = STAILQ_NEXT(cur_patch, links);
  } else {




   cur_patch = STAILQ_NEXT(cur_patch, links);
  }
 }

 *start_patch = cur_patch;
 if (start_instr < *skip_addr)

  return (0);

 return (1);
}
