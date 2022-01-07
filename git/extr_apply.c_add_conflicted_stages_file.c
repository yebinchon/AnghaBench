
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct patch {int new_mode; int new_name; int * threeway_stage; } ;
struct cache_entry {int ce_namelen; int oid; int ce_flags; int ce_mode; int name; } ;
struct apply_state {TYPE_1__* repo; int update_index; } ;
struct TYPE_2__ {int index; } ;


 int ADD_CACHE_OK_TO_ADD ;
 int S_IFREG ;
 int _ (char*) ;
 scalar_t__ add_index_entry (int ,struct cache_entry*,int ) ;
 int create_ce_flags (int) ;
 int create_ce_mode (unsigned int) ;
 int discard_cache_entry (struct cache_entry*) ;
 int error (int ,int ) ;
 scalar_t__ is_null_oid (int *) ;
 struct cache_entry* make_empty_cache_entry (int ,int) ;
 int memcpy (int ,int ,int) ;
 int oidcpy (int *,int *) ;
 int remove_file_from_index (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int add_conflicted_stages_file(struct apply_state *state,
           struct patch *patch)
{
 int stage, namelen;
 unsigned mode;
 struct cache_entry *ce;

 if (!state->update_index)
  return 0;
 namelen = strlen(patch->new_name);
 mode = patch->new_mode ? patch->new_mode : (S_IFREG | 0644);

 remove_file_from_index(state->repo->index, patch->new_name);
 for (stage = 1; stage < 4; stage++) {
  if (is_null_oid(&patch->threeway_stage[stage - 1]))
   continue;
  ce = make_empty_cache_entry(state->repo->index, namelen);
  memcpy(ce->name, patch->new_name, namelen);
  ce->ce_mode = create_ce_mode(mode);
  ce->ce_flags = create_ce_flags(stage);
  ce->ce_namelen = namelen;
  oidcpy(&ce->oid, &patch->threeway_stage[stage - 1]);
  if (add_index_entry(state->repo->index, ce, ADD_CACHE_OK_TO_ADD) < 0) {
   discard_cache_entry(ce);
   return error(_("unable to add cache entry for %s"),
         patch->new_name);
  }
 }

 return 0;
}
