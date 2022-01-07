
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zip_dir_trailer {int comment_length; int offset; int size; int entries; int entries_on_this_disk; int directory_start_disk; int disk; int magic; } ;
struct object_id {int dummy; } ;
struct TYPE_4__ {int hexsz; } ;
struct TYPE_3__ {int len; struct zip_dir_trailer* buf; } ;


 int ZIP_DIR_TRAILER_SIZE ;
 int copy_le16 (int ,int) ;
 int copy_le16_clamp (int ,int ,int*) ;
 int copy_le32 (int ,int) ;
 int copy_le32_clamp (int ,int ,int*) ;
 struct zip_dir_trailer* oid_to_hex (struct object_id const*) ;
 TYPE_2__* the_hash_algo ;
 int write_or_die (int,struct zip_dir_trailer*,int) ;
 int write_zip64_trailer () ;
 TYPE_1__ zip_dir ;
 int zip_dir_entries ;
 int zip_offset ;

__attribute__((used)) static void write_zip_trailer(const struct object_id *oid)
{
 struct zip_dir_trailer trailer;
 int clamped = 0;

 copy_le32(trailer.magic, 0x06054b50);
 copy_le16(trailer.disk, 0);
 copy_le16(trailer.directory_start_disk, 0);
 copy_le16_clamp(trailer.entries_on_this_disk, zip_dir_entries,
   &clamped);
 copy_le16_clamp(trailer.entries, zip_dir_entries, &clamped);
 copy_le32(trailer.size, zip_dir.len);
 copy_le32_clamp(trailer.offset, zip_offset, &clamped);
 copy_le16(trailer.comment_length, oid ? the_hash_algo->hexsz : 0);

 write_or_die(1, zip_dir.buf, zip_dir.len);
 if (clamped)
  write_zip64_trailer();
 write_or_die(1, &trailer, ZIP_DIR_TRAILER_SIZE);
 if (oid)
  write_or_die(1, oid_to_hex(oid), the_hash_algo->hexsz);
}
