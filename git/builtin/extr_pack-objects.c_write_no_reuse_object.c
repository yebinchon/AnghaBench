
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int offset; int oid; } ;
struct object_entry {long z_delta_size; TYPE_3__ idx; int * delta_data; } ;
struct hashfile {int dummy; } ;
struct git_istream {int dummy; } ;
typedef int off_t ;
typedef int header ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
typedef int dheader ;
struct TYPE_6__ {void* hash; } ;
struct TYPE_7__ {int offset; TYPE_1__ oid; } ;
struct TYPE_10__ {TYPE_2__ idx; } ;
struct TYPE_9__ {unsigned int rawsz; } ;


 TYPE_5__* DELTA (struct object_entry*) ;
 unsigned long DELTA_SIZE (struct object_entry*) ;
 int FREE_AND_NULL (int *) ;
 int MAX_PACK_OBJECT_HEADER ;
 scalar_t__ OBJ_BLOB ;
 int OBJ_OFS_DELTA ;
 int OBJ_REF_DELTA ;
 int _ (char*) ;
 scalar_t__ allow_ofs_delta ;
 int big_file_threshold ;
 int close_istream (struct git_istream*) ;
 int die (int ,int ) ;
 unsigned long do_compress (void**,unsigned long) ;
 unsigned int encode_in_pack_object_header (unsigned char*,int,int,unsigned long) ;
 int free (void*) ;
 void* get_delta (struct object_entry*) ;
 int hashwrite (struct hashfile*,void*,unsigned int const) ;
 scalar_t__ oe_size_greater_than (int *,struct object_entry*,int ) ;
 scalar_t__ oe_type (struct object_entry*) ;
 int oid_to_hex (int *) ;
 struct git_istream* open_istream (int *,int*,unsigned long*,int *) ;
 void* read_object_file (int *,int*,unsigned long*) ;
 TYPE_4__* the_hash_algo ;
 int to_pack ;
 unsigned long write_large_blob_data (struct git_istream*,struct hashfile*,int *) ;

__attribute__((used)) static unsigned long write_no_reuse_object(struct hashfile *f, struct object_entry *entry,
        unsigned long limit, int usable_delta)
{
 unsigned long size, datalen;
 unsigned char header[MAX_PACK_OBJECT_HEADER],
        dheader[MAX_PACK_OBJECT_HEADER];
 unsigned hdrlen;
 enum object_type type;
 void *buf;
 struct git_istream *st = ((void*)0);
 const unsigned hashsz = the_hash_algo->rawsz;

 if (!usable_delta) {
  if (oe_type(entry) == OBJ_BLOB &&
      oe_size_greater_than(&to_pack, entry, big_file_threshold) &&
      (st = open_istream(&entry->idx.oid, &type, &size, ((void*)0))) != ((void*)0))
   buf = ((void*)0);
  else {
   buf = read_object_file(&entry->idx.oid, &type, &size);
   if (!buf)
    die(_("unable to read %s"),
        oid_to_hex(&entry->idx.oid));
  }




  FREE_AND_NULL(entry->delta_data);
  entry->z_delta_size = 0;
 } else if (entry->delta_data) {
  size = DELTA_SIZE(entry);
  buf = entry->delta_data;
  entry->delta_data = ((void*)0);
  type = (allow_ofs_delta && DELTA(entry)->idx.offset) ?
   OBJ_OFS_DELTA : OBJ_REF_DELTA;
 } else {
  buf = get_delta(entry);
  size = DELTA_SIZE(entry);
  type = (allow_ofs_delta && DELTA(entry)->idx.offset) ?
   OBJ_OFS_DELTA : OBJ_REF_DELTA;
 }

 if (st)
  datalen = size;
 else if (entry->z_delta_size)
  datalen = entry->z_delta_size;
 else
  datalen = do_compress(&buf, size);





 hdrlen = encode_in_pack_object_header(header, sizeof(header),
           type, size);

 if (type == OBJ_OFS_DELTA) {





  off_t ofs = entry->idx.offset - DELTA(entry)->idx.offset;
  unsigned pos = sizeof(dheader) - 1;
  dheader[pos] = ofs & 127;
  while (ofs >>= 7)
   dheader[--pos] = 128 | (--ofs & 127);
  if (limit && hdrlen + sizeof(dheader) - pos + datalen + hashsz >= limit) {
   if (st)
    close_istream(st);
   free(buf);
   return 0;
  }
  hashwrite(f, header, hdrlen);
  hashwrite(f, dheader + pos, sizeof(dheader) - pos);
  hdrlen += sizeof(dheader) - pos;
 } else if (type == OBJ_REF_DELTA) {




  if (limit && hdrlen + hashsz + datalen + hashsz >= limit) {
   if (st)
    close_istream(st);
   free(buf);
   return 0;
  }
  hashwrite(f, header, hdrlen);
  hashwrite(f, DELTA(entry)->idx.oid.hash, hashsz);
  hdrlen += hashsz;
 } else {
  if (limit && hdrlen + datalen + hashsz >= limit) {
   if (st)
    close_istream(st);
   free(buf);
   return 0;
  }
  hashwrite(f, header, hdrlen);
 }
 if (st) {
  datalen = write_large_blob_data(st, f, &entry->idx.oid);
  close_istream(st);
 } else {
  hashwrite(f, buf, datalen);
  free(buf);
 }

 return hdrlen + datalen;
}
