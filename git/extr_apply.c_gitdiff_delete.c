
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int is_delete; int def_name; int old_name; } ;
struct gitdiff_data {int dummy; } ;


 int free (int ) ;
 int gitdiff_oldmode (struct gitdiff_data*,char const*,struct patch*) ;
 int xstrdup_or_null (int ) ;

__attribute__((used)) static int gitdiff_delete(struct gitdiff_data *state,
     const char *line,
     struct patch *patch)
{
 patch->is_delete = 1;
 free(patch->old_name);
 patch->old_name = xstrdup_or_null(patch->def_name);
 return gitdiff_oldmode(state, line, patch);
}
