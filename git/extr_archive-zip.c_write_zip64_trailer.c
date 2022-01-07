
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zip64_dir_trailer_locator {int number_of_disks; int offset; int disk; int magic; int size; int entries; int entries_on_this_disk; int directory_start_disk; int version; int creator_version; int record_size; } ;
struct zip64_dir_trailer {int number_of_disks; int offset; int disk; int magic; int size; int entries; int entries_on_this_disk; int directory_start_disk; int version; int creator_version; int record_size; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int ZIP64_DIR_TRAILER_LOCATOR_SIZE ;
 scalar_t__ ZIP64_DIR_TRAILER_RECORD_SIZE ;
 int ZIP64_DIR_TRAILER_SIZE ;
 int copy_le16 (int ,int) ;
 int copy_le32 (int ,int) ;
 int copy_le64 (int ,scalar_t__) ;
 int max_creator_version ;
 int write_or_die (int,struct zip64_dir_trailer_locator*,int ) ;
 TYPE_1__ zip_dir ;
 scalar_t__ zip_dir_entries ;
 scalar_t__ zip_offset ;

__attribute__((used)) static void write_zip64_trailer(void)
{
 struct zip64_dir_trailer trailer64;
 struct zip64_dir_trailer_locator locator64;

 copy_le32(trailer64.magic, 0x06064b50);
 copy_le64(trailer64.record_size, ZIP64_DIR_TRAILER_RECORD_SIZE);
 copy_le16(trailer64.creator_version, max_creator_version);
 copy_le16(trailer64.version, 45);
 copy_le32(trailer64.disk, 0);
 copy_le32(trailer64.directory_start_disk, 0);
 copy_le64(trailer64.entries_on_this_disk, zip_dir_entries);
 copy_le64(trailer64.entries, zip_dir_entries);
 copy_le64(trailer64.size, zip_dir.len);
 copy_le64(trailer64.offset, zip_offset);

 copy_le32(locator64.magic, 0x07064b50);
 copy_le32(locator64.disk, 0);
 copy_le64(locator64.offset, zip_offset + zip_dir.len);
 copy_le32(locator64.number_of_disks, 1);

 write_or_die(1, &trailer64, ZIP64_DIR_TRAILER_SIZE);
 write_or_die(1, &locator64, ZIP64_DIR_TRAILER_LOCATOR_SIZE);
}
