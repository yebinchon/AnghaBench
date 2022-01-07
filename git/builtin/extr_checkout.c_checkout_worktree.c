
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct checkout_opts {TYPE_2__* source_tree; scalar_t__ count_checkout_paths; scalar_t__ merge; int overlay_mode; scalar_t__ writeout_stage; } ;
struct checkout {int force; int refresh_cache; int * istate; } ;
struct cache_entry {int ce_flags; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int CE_MATCHED ;
 struct checkout CHECKOUT_INIT ;
 int DEFAULT_ABBREV ;
 int Q_ (char*,char*,int) ;
 struct cache_entry** active_cache ;
 int active_nr ;
 int ce_stage (struct cache_entry*) ;
 int checkout_entry (struct cache_entry*,struct checkout*,int *,int*) ;
 int checkout_merged (int,struct checkout*,int*) ;
 int checkout_stage (scalar_t__,struct cache_entry*,int,struct checkout*,int*,int ) ;
 int enable_delayed_checkout (struct checkout*) ;
 int find_unique_abbrev (int *,int ) ;
 int finish_delayed_checkout (struct checkout*,int*) ;
 int fprintf_ln (int ,int ,int,...) ;
 int remove_marked_cache_entries (int *,int) ;
 int remove_scheduled_dirs () ;
 int skip_same_name (struct cache_entry*,int) ;
 int stderr ;
 int the_index ;

__attribute__((used)) static int checkout_worktree(const struct checkout_opts *opts)
{
 struct checkout state = CHECKOUT_INIT;
 int nr_checkouts = 0, nr_unmerged = 0;
 int errs = 0;
 int pos;

 state.force = 1;
 state.refresh_cache = 1;
 state.istate = &the_index;

 enable_delayed_checkout(&state);
 for (pos = 0; pos < active_nr; pos++) {
  struct cache_entry *ce = active_cache[pos];
  if (ce->ce_flags & CE_MATCHED) {
   if (!ce_stage(ce)) {
    errs |= checkout_entry(ce, &state,
             ((void*)0), &nr_checkouts);
    continue;
   }
   if (opts->writeout_stage)
    errs |= checkout_stage(opts->writeout_stage,
             ce, pos,
             &state,
             &nr_checkouts, opts->overlay_mode);
   else if (opts->merge)
    errs |= checkout_merged(pos, &state,
       &nr_unmerged);
   pos = skip_same_name(ce, pos) - 1;
  }
 }
 remove_marked_cache_entries(&the_index, 1);
 remove_scheduled_dirs();
 errs |= finish_delayed_checkout(&state, &nr_checkouts);

 if (opts->count_checkout_paths) {
  if (nr_unmerged)
   fprintf_ln(stderr, Q_("Recreated %d merge conflict",
           "Recreated %d merge conflicts",
           nr_unmerged),
       nr_unmerged);
  if (opts->source_tree)
   fprintf_ln(stderr, Q_("Updated %d path from %s",
           "Updated %d paths from %s",
           nr_checkouts),
       nr_checkouts,
       find_unique_abbrev(&opts->source_tree->object.oid,
            DEFAULT_ABBREV));
  else if (!nr_unmerged || nr_checkouts)
   fprintf_ln(stderr, Q_("Updated %d path from the index",
           "Updated %d paths from the index",
           nr_checkouts),
       nr_checkouts);
 }

 return errs;
}
