
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int8_t ;


 int printf (char*,int,int) ;
 int warn (char*) ;

__attribute__((used)) static int
set_bell(u_int8_t *mbr, int new_bell, int report)
{

    static unsigned seq[] =
  { 0xb0, 0x100, 0xe8, 0x100, 0x100, 0x30, 0xe4, 0x200 };
    int ofs, i, c;
    for (ofs = 0x60; ofs < 0x180; ofs++) {
 if (mbr[ofs] != seq[0])
     continue;
 for (i=0;; i++) {
     if (seq[i] == 0x200) {
  c = mbr[ofs+1];
  if (!report)
      mbr[ofs+1] = c = new_bell;
  else
      printf("  bell=%c (0x%x)",
   (c >= ' ' && c < 0x7f) ? c : ' ', c);
  return c;
     }
     if (seq[i] != 0x100 && seq[i] != mbr[ofs+i])
  break;
 }
    }
    warn("bell not found");
    return -1;
}
