
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ib_field {int size_bits; int offset_bits; int offset_words; int struct_offset_bytes; int field_name; int struct_size_bytes; } ;
typedef int __be64 ;
typedef int __be32 ;


 int be32_to_cpup (int *) ;
 int be64_to_cpup (int *) ;
 int memcpy (char*,char*,int) ;
 int pr_warn (char*,int ,int) ;
 int value_write (int,int ,int,void*) ;

void ib_unpack(const struct ib_field *desc,
        int desc_len,
        void *buf,
        void *structure)
{
 int i;

 for (i = 0; i < desc_len; ++i) {
  if (!desc[i].struct_size_bytes)
   continue;

  if (desc[i].size_bits <= 32) {
   int shift;
   u32 val;
   u32 mask;
   __be32 *addr;

   shift = 32 - desc[i].offset_bits - desc[i].size_bits;
   mask = ((1ull << desc[i].size_bits) - 1) << shift;
   addr = (__be32 *) buf + desc[i].offset_words;
   val = (be32_to_cpup(addr) & mask) >> shift;
   value_write(desc[i].struct_offset_bytes,
        desc[i].struct_size_bytes,
        val,
        structure);
  } else if (desc[i].size_bits <= 64) {
   int shift;
   u64 val;
   u64 mask;
   __be64 *addr;

   shift = 64 - desc[i].offset_bits - desc[i].size_bits;
   mask = (~0ull >> (64 - desc[i].size_bits)) << shift;
   addr = (__be64 *) buf + desc[i].offset_words;
   val = (be64_to_cpup(addr) & mask) >> shift;
   value_write(desc[i].struct_offset_bytes,
        desc[i].struct_size_bytes,
        val,
        structure);
  } else {
   if (desc[i].offset_bits % 8 ||
       desc[i].size_bits % 8) {
    pr_warn("Structure field %s of size %d bits is not byte-aligned\n",
     desc[i].field_name, desc[i].size_bits);
   }

   memcpy((char *)structure + desc[i].struct_offset_bytes,
          (char *)buf + desc[i].offset_words * 4 +
          desc[i].offset_bits / 8,
          desc[i].size_bits / 8);
  }
 }
}
