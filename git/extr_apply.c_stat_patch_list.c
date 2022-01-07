
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {scalar_t__ lines_deleted; scalar_t__ lines_added; struct patch* next; } ;
struct apply_state {int dummy; } ;


 int print_stat_summary (int ,int,int,int) ;
 int show_stats (struct apply_state*,struct patch*) ;
 int stdout ;

__attribute__((used)) static void stat_patch_list(struct apply_state *state, struct patch *patch)
{
 int files, adds, dels;

 for (files = adds = dels = 0 ; patch ; patch = patch->next) {
  files++;
  adds += patch->lines_added;
  dels += patch->lines_deleted;
  show_stats(state, patch);
 }

 print_stat_summary(stdout, files, adds, dels);
}
