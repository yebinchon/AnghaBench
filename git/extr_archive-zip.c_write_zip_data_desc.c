
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_data_desc {int size; int compressed_size; int crc32; int magic; } ;
struct zip64_data_desc {int size; int compressed_size; int crc32; int magic; } ;


 scalar_t__ ZIP64_DATA_DESC_SIZE ;
 scalar_t__ ZIP_DATA_DESC_SIZE ;
 int copy_le32 (int ,unsigned long) ;
 int copy_le64 (int ,unsigned long) ;
 int write_or_die (int,struct zip_data_desc*,scalar_t__) ;
 int zip_offset ;

__attribute__((used)) static void write_zip_data_desc(unsigned long size,
    unsigned long compressed_size,
    unsigned long crc)
{
 if (size >= 0xffffffff || compressed_size >= 0xffffffff) {
  struct zip64_data_desc trailer;
  copy_le32(trailer.magic, 0x08074b50);
  copy_le32(trailer.crc32, crc);
  copy_le64(trailer.compressed_size, compressed_size);
  copy_le64(trailer.size, size);
  write_or_die(1, &trailer, ZIP64_DATA_DESC_SIZE);
  zip_offset += ZIP64_DATA_DESC_SIZE;
 } else {
  struct zip_data_desc trailer;
  copy_le32(trailer.magic, 0x08074b50);
  copy_le32(trailer.crc32, crc);
  copy_le32(trailer.compressed_size, compressed_size);
  copy_le32(trailer.size, size);
  write_or_die(1, &trailer, ZIP_DATA_DESC_SIZE);
  zip_offset += ZIP_DATA_DESC_SIZE;
 }
}
