
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int __be64 ;
typedef int __be32 ;
typedef int __be16 ;


 int be16_to_cpup (int *) ;
 int be32_to_cpup (int *) ;
 int be64_to_cpup (int *) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static u64 value_read(int offset, int size, void *structure)
{
 switch (size) {
 case 1: return *(u8 *) ((char *)structure + offset);
 case 2: return be16_to_cpup((__be16 *) ((char *)structure + offset));
 case 4: return be32_to_cpup((__be32 *) ((char *)structure + offset));
 case 8: return be64_to_cpup((__be64 *) ((char *)structure + offset));
 default:
  pr_warn("Field size %d bits not handled\n", size * 8);
  return 0;
 }
}
