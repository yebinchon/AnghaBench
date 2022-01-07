
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int old_name; int is_new; } ;
struct gitdiff_data {int dummy; } ;


 int DIFF_OLD_NAME ;
 int gitdiff_verify_name (struct gitdiff_data*,char const*,int ,int *,int ) ;

__attribute__((used)) static int gitdiff_oldname(struct gitdiff_data *state,
      const char *line,
      struct patch *patch)
{
 return gitdiff_verify_name(state, line,
       patch->is_new, &patch->old_name,
       DIFF_OLD_NAME);
}
