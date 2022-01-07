
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int crc32; } ;
struct object_entry {scalar_t__ in_pack_type; TYPE_2__ idx; } ;
struct hashfile {int dummy; } ;
typedef scalar_t__ off_t ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct TYPE_6__ {TYPE_1__ idx; } ;


 TYPE_3__* DELTA (struct object_entry*) ;
 int IN_PACK (struct object_entry*) ;
 scalar_t__ OBJ_OFS_DELTA ;
 scalar_t__ OBJ_REF_DELTA ;
 int crc32_begin (struct hashfile*) ;
 int crc32_end (struct hashfile*) ;
 int nr_written ;
 scalar_t__ oe_type (struct object_entry*) ;
 scalar_t__ pack_size_limit ;
 int pack_to_stdout ;
 int reuse_object ;
 scalar_t__ write_no_reuse_object (struct hashfile*,struct object_entry*,unsigned long,int) ;
 scalar_t__ write_reuse_object (struct hashfile*,struct object_entry*,unsigned long,int) ;
 int written ;
 int written_delta ;

__attribute__((used)) static off_t write_object(struct hashfile *f,
     struct object_entry *entry,
     off_t write_offset)
{
 unsigned long limit;
 off_t len;
 int usable_delta, to_reuse;

 if (!pack_to_stdout)
  crc32_begin(f);


 if (!pack_size_limit || !nr_written)
  limit = 0;
 else if (pack_size_limit <= write_offset)




  limit = 1;
 else
  limit = pack_size_limit - write_offset;

 if (!DELTA(entry))
  usable_delta = 0;
 else if (!pack_size_limit)
        usable_delta = 1;
 else if (DELTA(entry)->idx.offset == (off_t)-1)
  usable_delta = 0;
 else if (DELTA(entry)->idx.offset)
  usable_delta = 1;
 else
  usable_delta = 0;

 if (!reuse_object)
  to_reuse = 0;
 else if (!IN_PACK(entry))
  to_reuse = 0;
 else if (oe_type(entry) == OBJ_REF_DELTA ||
   oe_type(entry) == OBJ_OFS_DELTA)

  to_reuse = usable_delta;

 else if (oe_type(entry) != entry->in_pack_type)
  to_reuse = 0;
 else if (DELTA(entry))
  to_reuse = 0;
 else
  to_reuse = 1;



 if (!to_reuse)
  len = write_no_reuse_object(f, entry, limit, usable_delta);
 else
  len = write_reuse_object(f, entry, limit, usable_delta);
 if (!len)
  return 0;

 if (usable_delta)
  written_delta++;
 written++;
 if (!pack_to_stdout)
  entry->idx.crc32 = crc32_end(f);
 return len;
}
