
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;
struct g_llvm_label {int ll_sector; int ll_offset; char* ll_uuid; scalar_t__ ll_pestart; scalar_t__ ll_size; void* ll_crc; scalar_t__ ll_md_size; scalar_t__ ll_md_offset; } ;


 int EINVAL ;
 int G_LLVM_DEBUG (int,char*,...) ;
 scalar_t__ bcmp (char*,int const*,int) ;
 int bcopy (int const*,char*,int) ;
 void* le32dec (int const*) ;
 scalar_t__ le64dec (int const*) ;

__attribute__((used)) static int
llvm_label_decode(const u_char *data, struct g_llvm_label *ll, int sector)
{
 uint64_t off;
 char *uuid;


 if (bcmp("LABELONE", data , 8) != 0)
  return (EINVAL);


 if (bcmp("LVM2 001", data + 24, 8) != 0) {
  G_LLVM_DEBUG(0, "Unsupported LVM format");
  return (EINVAL);
 }

 ll->ll_sector = le64dec(data + 8);
 ll->ll_crc = le32dec(data + 16);
 ll->ll_offset = le32dec(data + 20);

 if (ll->ll_sector != sector) {
  G_LLVM_DEBUG(0, "Expected sector %ju, found at %d",
      ll->ll_sector, sector);
  return (EINVAL);
 }

 off = ll->ll_offset;




 uuid = ll->ll_uuid;
 bcopy(data + off, uuid, 6);
 off += 6;
 uuid += 6;
 *uuid++ = '-';
 for (int i = 0; i < 5; i++) {
  bcopy(data + off, uuid, 4);
  off += 4;
  uuid += 4;
  *uuid++ = '-';
 }
 bcopy(data + off, uuid, 6);
 off += 6;
 uuid += 6;
 *uuid++ = '\0';

 ll->ll_size = le64dec(data + off);
 off += 8;
 ll->ll_pestart = le64dec(data + off);
 off += 16;


 if (le64dec(data + off) != 0) {
  G_LLVM_DEBUG(0, "Only one data section supported");
  return (EINVAL);
 }

 off += 16;
 ll->ll_md_offset = le64dec(data + off);
 off += 8;
 ll->ll_md_size = le64dec(data + off);
 off += 8;

 G_LLVM_DEBUG(1, "LVM metadata: offset=%ju, size=%ju", ll->ll_md_offset,
     ll->ll_md_size);


 if (le64dec(data + off) != 0) {
  G_LLVM_DEBUG(0, "Only one metadata section supported");
  return (EINVAL);
 }

 G_LLVM_DEBUG(2, "label uuid=%s", ll->ll_uuid);
 G_LLVM_DEBUG(2, "sector=%ju, crc=%u, offset=%u, size=%ju, pestart=%ju",
     ll->ll_sector, ll->ll_crc, ll->ll_offset, ll->ll_size,
     ll->ll_pestart);

 return (0);
}
