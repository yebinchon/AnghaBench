
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_local_header {int size; int compressed_size; int crc32; } ;


 int copy_le32 (int ,unsigned long) ;

__attribute__((used)) static void set_zip_header_data_desc(struct zip_local_header *header,
         unsigned long size,
         unsigned long compressed_size,
         unsigned long crc)
{
 copy_le32(header->crc32, crc);
 copy_le32(header->compressed_size, compressed_size);
 copy_le32(header->size, size);
}
