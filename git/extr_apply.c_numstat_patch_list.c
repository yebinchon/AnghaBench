
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {char* new_name; char* old_name; int lines_added; int lines_deleted; scalar_t__ is_binary; struct patch* next; } ;
struct apply_state {int line_termination; } ;


 int printf (char*,...) ;
 int stdout ;
 int write_name_quoted (char const*,int ,int ) ;

__attribute__((used)) static void numstat_patch_list(struct apply_state *state,
          struct patch *patch)
{
 for ( ; patch; patch = patch->next) {
  const char *name;
  name = patch->new_name ? patch->new_name : patch->old_name;
  if (patch->is_binary)
   printf("-\t-\t");
  else
   printf("%d\t%d\t", patch->lines_added, patch->lines_deleted);
  write_name_quoted(name, stdout, state->line_termination);
 }
}
