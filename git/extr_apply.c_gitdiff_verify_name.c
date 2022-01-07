
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gitdiff_data {char* linenr; int p_value; int root; } ;


 int DIFF_NEW_NAME ;
 int TERM_TAB ;
 int _ (char*) ;
 int error (int ,char*,...) ;
 char* find_name (int ,char const*,int *,int ,int ) ;
 int free (char*) ;
 int is_dev_null (char const*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int gitdiff_verify_name(struct gitdiff_data *state,
          const char *line,
          int isnull,
          char **name,
          int side)
{
 if (!*name && !isnull) {
  *name = find_name(state->root, line, ((void*)0), state->p_value, TERM_TAB);
  return 0;
 }

 if (*name) {
  char *another;
  if (isnull)
   return error(_("git apply: bad git-diff - expected /dev/null, got %s on line %d"),
         *name, state->linenr);
  another = find_name(state->root, line, ((void*)0), state->p_value, TERM_TAB);
  if (!another || strcmp(another, *name)) {
   free(another);
   return error((side == DIFF_NEW_NAME) ?
       _("git apply: bad git-diff - inconsistent new filename on line %d") :
       _("git apply: bad git-diff - inconsistent old filename on line %d"), state->linenr);
  }
  free(another);
 } else {
  if (!is_dev_null(line))
   return error(_("git apply: bad git-diff - expected /dev/null on line %d"), state->linenr);
 }

 return 0;
}
