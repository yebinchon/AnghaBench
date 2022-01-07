
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;


 int TLB_E ;
 int TLB_G ;
 int TLB_I ;
 int TLB_IL1D ;
 int TLB_IL1I ;
 int TLB_IL2D ;
 int TLB_IL2I ;
 int TLB_M ;
 int TLB_SIZE_MASK ;
 int TLB_SR ;
 int TLB_SW ;
 int TLB_SX ;
 int TLB_TS ;
 int TLB_U0 ;
 int TLB_U1 ;
 int TLB_U2 ;
 int TLB_U3 ;
 int TLB_UR ;
 int TLB_UW ;
 int TLB_UX ;
 int TLB_VALID ;
 int TLB_W ;
 int TLB_WL1 ;
 int printf (char*,int,int,int,int,char const*,char,char,char*,char*,char*,char*,char*,char,char,char,char,char,char,char,char,char,char,char,char,char,char,char,int) ;
 int tlb_read (int,int*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static void tlb_dump_entry(u_int entry)
{
 uint32_t epn, rpn, erpn, tid, flags, perms;
 const char *size;

 tlb_read(entry, &epn, &rpn, &erpn, &tid, &flags, &perms);

 switch (flags & TLB_SIZE_MASK) {
 case 132:
  size = "  1k";
  break;
 case 128:
  size = "  4k";
  break;
 case 135:
  size = " 16k";
  break;
 case 130:
  size = "256k";
  break;
 case 131:
  size = "  1M";
  break;
 case 134:
  size = " 16M";
  break;
 case 129:
  size = "256M";
  break;
 case 133:
  size = "  1G";
  break;
 default:
  size = "????";
  break;
 }


 printf("TLB[%02u]: 0x%08X => "
     "0x%01X_%08X %s %c %c %s %s %s %s %s "
     "%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c (%u)\n",
     entry, epn, erpn, rpn, size,
     (flags & TLB_TS) ? '1' : '0',
     (flags & TLB_VALID) ? 'V' : '.',
     (perms & TLB_WL1) ? "WL1" : "___",
     (perms & TLB_IL1I) ? "IL1I" : "____",
     (perms & TLB_IL1D) ? "IL1D" : "____",
     (perms & TLB_IL2I) ? "IL2I" : "____",
     (perms & TLB_IL2D) ? "IL2D" : "____",
     (perms & TLB_U0) ? '1' : '.',
     (perms & TLB_U1) ? '2' : '.',
     (perms & TLB_U2) ? '3' : '.',
     (perms & TLB_U3) ? '4' : '.',
     (perms & TLB_W) ? 'W' : '.',
     (perms & TLB_I) ? 'I' : '.',
     (perms & TLB_M) ? 'M' : '.',
     (perms & TLB_G) ? 'G' : '.',
     (perms & TLB_E) ? 'E' : '.',
     (perms & TLB_UX) ? 'x' : '.',
     (perms & TLB_UW) ? 'w' : '.',
     (perms & TLB_UR) ? 'r' : '.',
     (perms & TLB_SX) ? 'X' : '.',
     (perms & TLB_SW) ? 'W' : '.',
     (perms & TLB_SR) ? 'R' : '.',
     tid);
}
