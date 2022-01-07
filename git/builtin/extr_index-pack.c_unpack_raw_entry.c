
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_id {int hash; } ;
struct TYPE_3__ {int offset; int crc32; } ;
struct object_entry {unsigned long type; unsigned long size; TYPE_1__ idx; void* hdr_size; } ;
typedef int off_t ;
struct TYPE_4__ {int rawsz; } ;


 int MSB (int,int) ;






 int _ (char*) ;
 int bad_object (int,int ,...) ;
 void* consumed_bytes ;
 int crc32 (int ,int *,int ) ;
 unsigned char* fill (int) ;
 int hashcpy (int ,unsigned char*) ;
 int input_crc32 ;
 TYPE_2__* the_hash_algo ;
 void* unpack_entry_data (void*,unsigned long,long,struct object_id*) ;
 int use (int) ;

__attribute__((used)) static void *unpack_raw_entry(struct object_entry *obj,
         off_t *ofs_offset,
         struct object_id *ref_oid,
         struct object_id *oid)
{
 unsigned char *p;
 unsigned long size, c;
 off_t base_offset;
 unsigned shift;
 void *data;

 obj->idx.offset = consumed_bytes;
 input_crc32 = crc32(0, ((void*)0), 0);

 p = fill(1);
 c = *p;
 use(1);
 obj->type = (c >> 4) & 7;
 size = (c & 15);
 shift = 4;
 while (c & 0x80) {
  p = fill(1);
  c = *p;
  use(1);
  size += (c & 0x7f) << shift;
  shift += 7;
 }
 obj->size = size;

 switch (obj->type) {
 case 130:
  hashcpy(ref_oid->hash, fill(the_hash_algo->rawsz));
  use(the_hash_algo->rawsz);
  break;
 case 131:
  p = fill(1);
  c = *p;
  use(1);
  base_offset = c & 127;
  while (c & 128) {
   base_offset += 1;
   if (!base_offset || MSB(base_offset, 7))
    bad_object(obj->idx.offset, _("offset value overflow for delta base object"));
   p = fill(1);
   c = *p;
   use(1);
   base_offset = (base_offset << 7) + (c & 127);
  }
  *ofs_offset = obj->idx.offset - base_offset;
  if (*ofs_offset <= 0 || *ofs_offset >= obj->idx.offset)
   bad_object(obj->idx.offset, _("delta base offset is out of bound"));
  break;
 case 132:
 case 128:
 case 133:
 case 129:
  break;
 default:
  bad_object(obj->idx.offset, _("unknown object type %d"), obj->type);
 }
 obj->hdr_size = consumed_bytes - obj->idx.offset;

 data = unpack_entry_data(obj->idx.offset, obj->size, obj->type, oid);
 obj->idx.crc32 = input_crc32;
 return data;
}
