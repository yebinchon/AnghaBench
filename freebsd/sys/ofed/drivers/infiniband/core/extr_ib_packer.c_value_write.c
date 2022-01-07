
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int __be64 ;
typedef int __be32 ;
typedef int __be16 ;


 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static void value_write(int offset, int size, u64 val, void *structure)
{
 switch (size * 8) {
 case 8: *( u8 *) ((char *)structure + offset) = val; break;
 case 16: *(__be16 *) ((char *)structure + offset) = cpu_to_be16(val); break;
 case 32: *(__be32 *) ((char *)structure + offset) = cpu_to_be32(val); break;
 case 64: *(__be64 *) ((char *)structure + offset) = cpu_to_be64(val); break;
 default:
  pr_warn("Field size %d bits not handled\n", size * 8);
 }
}
