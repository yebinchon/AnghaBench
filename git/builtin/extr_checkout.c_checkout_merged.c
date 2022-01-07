
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int threeway ;
struct object_id {int dummy; } ;
struct checkout {int istate; } ;
struct cache_entry {char* name; int ce_mode; int oid; } ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_1__ mmfile_t ;
struct TYPE_9__ {int ptr; int size; } ;
typedef TYPE_2__ mmbuffer_t ;


 int _ (char*) ;
 struct cache_entry** active_cache ;
 int active_nr ;
 int blob_type ;
 int ce_stage (struct cache_entry*) ;
 int checkout_entry (struct cache_entry*,struct checkout const*,int *,int*) ;
 unsigned int create_ce_mode (int ) ;
 int die (int ,char const*) ;
 int discard_cache_entry (struct cache_entry*) ;
 int error (int ,char const*) ;
 int free (int ) ;
 scalar_t__ is_null_oid (struct object_id*) ;
 int ll_merge (TYPE_2__*,char const*,TYPE_1__*,char*,TYPE_1__*,char*,TYPE_1__*,char*,int ,int *) ;
 struct cache_entry* make_transient_cache_entry (unsigned int,struct object_id*,char const*,int) ;
 int memset (struct object_id*,int ,int) ;
 int oidcpy (struct object_id*,int *) ;
 int read_mmblob (TYPE_1__*,struct object_id*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ write_object_file (int ,int ,int ,struct object_id*) ;

__attribute__((used)) static int checkout_merged(int pos, const struct checkout *state, int *nr_checkouts)
{
 struct cache_entry *ce = active_cache[pos];
 const char *path = ce->name;
 mmfile_t ancestor, ours, theirs;
 int status;
 struct object_id oid;
 mmbuffer_t result_buf;
 struct object_id threeway[3];
 unsigned mode = 0;

 memset(threeway, 0, sizeof(threeway));
 while (pos < active_nr) {
  int stage;
  stage = ce_stage(ce);
  if (!stage || strcmp(path, ce->name))
   break;
  oidcpy(&threeway[stage - 1], &ce->oid);
  if (stage == 2)
   mode = create_ce_mode(ce->ce_mode);
  pos++;
  ce = active_cache[pos];
 }
 if (is_null_oid(&threeway[1]) || is_null_oid(&threeway[2]))
  return error(_("path '%s' does not have necessary versions"), path);

 read_mmblob(&ancestor, &threeway[0]);
 read_mmblob(&ours, &threeway[1]);
 read_mmblob(&theirs, &threeway[2]);





 status = ll_merge(&result_buf, path, &ancestor, "base",
     &ours, "ours", &theirs, "theirs",
     state->istate, ((void*)0));
 free(ancestor.ptr);
 free(ours.ptr);
 free(theirs.ptr);
 if (status < 0 || !result_buf.ptr) {
  free(result_buf.ptr);
  return error(_("path '%s': cannot merge"), path);
 }
 if (write_object_file(result_buf.ptr, result_buf.size, blob_type, &oid))
  die(_("Unable to add merge result for '%s'"), path);
 free(result_buf.ptr);
 ce = make_transient_cache_entry(mode, &oid, path, 2);
 if (!ce)
  die(_("make_cache_entry failed for path '%s'"), path);
 status = checkout_entry(ce, state, ((void*)0), nr_checkouts);
 discard_cache_entry(ce);
 return status;
}
