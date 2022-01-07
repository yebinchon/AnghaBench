
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 scalar_t__ consumed_bytes ;
 int crc32 (int ,scalar_t__,int) ;
 int die (int ) ;
 scalar_t__ input_buffer ;
 int input_crc32 ;
 int input_len ;
 scalar_t__ input_offset ;
 scalar_t__ max_input_size ;
 scalar_t__ signed_add_overflows (scalar_t__,int) ;

__attribute__((used)) static void use(int bytes)
{
 if (bytes > input_len)
  die(_("used more bytes than were available"));
 input_crc32 = crc32(input_crc32, input_buffer + input_offset, bytes);
 input_len -= bytes;
 input_offset += bytes;


 if (signed_add_overflows(consumed_bytes, bytes))
  die(_("pack too large for current definition of off_t"));
 consumed_bytes += bytes;
 if (max_input_size && consumed_bytes > max_input_size)
  die(_("pack exceeds maximum allowed size"));
}
