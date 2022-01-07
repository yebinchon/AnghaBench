
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;


 int GV_LEGACY_AMD64 ;
 int GV_LEGACY_I386 ;
 int GV_LEGACY_POWERPC ;
 int GV_LEGACY_SPARC64 ;

__attribute__((used)) static int
gv_legacy_header_type(uint8_t *hdr, int bigendian)
{
 uint32_t *i32;
 int arch_32, arch_64, i;


 if (bigendian) {
  arch_32 = GV_LEGACY_POWERPC;
  arch_64 = GV_LEGACY_SPARC64;
 } else {
  arch_32 = GV_LEGACY_I386;
  arch_64 = GV_LEGACY_AMD64;
 }


 i32 = (uint32_t *)(hdr + 12);
 if (*i32 != 0)
  return (arch_32);

 if (hdr[16] != 0)
  return (arch_64);

 for (i = 100; i < 120; i++)
  if (hdr[i] != 0)
   return (arch_32);

 i32 = (uint32_t *)(hdr + 84);

 if (*i32 == 0)
  return (arch_64);
 return (arch_32);
}
