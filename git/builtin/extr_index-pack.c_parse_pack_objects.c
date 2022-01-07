
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {scalar_t__ st_size; int st_mode; } ;
struct ofs_delta_entry {int obj_no; int offset; } ;
struct object_id {int dummy; } ;
struct TYPE_5__ {int oid; int offset; } ;
struct object_entry {scalar_t__ real_type; scalar_t__ type; TYPE_1__ idx; int size; } ;
struct TYPE_7__ {int obj_no; int oid; } ;
struct TYPE_6__ {int rawsz; int (* final_fn ) (unsigned char*,int *) ;} ;


 int ALLOC_GROW (TYPE_3__*,int,int ) ;
 scalar_t__ OBJ_BAD ;
 scalar_t__ OBJ_OFS_DELTA ;
 scalar_t__ OBJ_REF_DELTA ;
 int SEEK_CUR ;
 scalar_t__ S_ISREG (int ) ;
 int _ (char*) ;
 int consumed_bytes ;
 int die (int ) ;
 int die_errno (int ) ;
 int display_progress (int ,int) ;
 int fill (int ) ;
 int flush () ;
 int free (void*) ;
 scalar_t__ from_stdin ;
 scalar_t__ fstat (int ,struct stat*) ;
 int hasheq (int ,unsigned char*) ;
 int input_ctx ;
 int input_fd ;
 scalar_t__ input_len ;
 scalar_t__ lseek (int ,int ,int ) ;
 int nr_objects ;
 int nr_ofs_deltas ;
 int nr_ref_deltas ;
 struct object_entry* objects ;
 struct ofs_delta_entry* ofs_deltas ;
 int oidcpy (int *,struct object_id*) ;
 int progress ;
 TYPE_3__* ref_deltas ;
 int ref_deltas_alloc ;
 int sha1_object (void*,struct object_entry*,int ,scalar_t__,int *) ;
 int start_progress (int ,int) ;
 int stop_progress (int *) ;
 int stub1 (unsigned char*,int *) ;
 TYPE_2__* the_hash_algo ;
 void* unpack_raw_entry (struct object_entry*,int *,struct object_id*,int *) ;
 int use (int ) ;
 scalar_t__ verbose ;

__attribute__((used)) static void parse_pack_objects(unsigned char *hash)
{
 int i, nr_delays = 0;
 struct ofs_delta_entry *ofs_delta = ofs_deltas;
 struct object_id ref_delta_oid;
 struct stat st;

 if (verbose)
  progress = start_progress(
    from_stdin ? _("Receiving objects") : _("Indexing objects"),
    nr_objects);
 for (i = 0; i < nr_objects; i++) {
  struct object_entry *obj = &objects[i];
  void *data = unpack_raw_entry(obj, &ofs_delta->offset,
           &ref_delta_oid,
           &obj->idx.oid);
  obj->real_type = obj->type;
  if (obj->type == OBJ_OFS_DELTA) {
   nr_ofs_deltas++;
   ofs_delta->obj_no = i;
   ofs_delta++;
  } else if (obj->type == OBJ_REF_DELTA) {
   ALLOC_GROW(ref_deltas, nr_ref_deltas + 1, ref_deltas_alloc);
   oidcpy(&ref_deltas[nr_ref_deltas].oid, &ref_delta_oid);
   ref_deltas[nr_ref_deltas].obj_no = i;
   nr_ref_deltas++;
  } else if (!data) {

   obj->real_type = OBJ_BAD;
   nr_delays++;
  } else
   sha1_object(data, ((void*)0), obj->size, obj->type,
        &obj->idx.oid);
  free(data);
  display_progress(progress, i+1);
 }
 objects[i].idx.offset = consumed_bytes;
 stop_progress(&progress);


 flush();
 the_hash_algo->final_fn(hash, &input_ctx);
 if (!hasheq(fill(the_hash_algo->rawsz), hash))
  die(_("pack is corrupted (SHA1 mismatch)"));
 use(the_hash_algo->rawsz);


 if (fstat(input_fd, &st))
  die_errno(_("cannot fstat packfile"));
 if (S_ISREG(st.st_mode) &&
   lseek(input_fd, 0, SEEK_CUR) - input_len != st.st_size)
  die(_("pack has junk at the end"));

 for (i = 0; i < nr_objects; i++) {
  struct object_entry *obj = &objects[i];
  if (obj->real_type != OBJ_BAD)
   continue;
  obj->real_type = obj->type;
  sha1_object(((void*)0), obj, obj->size, obj->type,
       &obj->idx.oid);
  nr_delays--;
 }
 if (nr_delays)
  die(_("confusion beyond insanity in parse_pack_objects()"));
}
