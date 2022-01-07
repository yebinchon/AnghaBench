
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct pci_conf {int pc_vendor; int pc_sel; } ;


 int PCIR_VENDOR_DATA ;
 int PCIR_VENDOR_LENGTH ;
 int printf (char*,...) ;
 int read_config (int,int *,int,int) ;

__attribute__((used)) static void
cap_vendor(int fd, struct pci_conf *p, uint8_t ptr)
{
 uint8_t length;

 length = read_config(fd, &p->pc_sel, ptr + PCIR_VENDOR_LENGTH, 1);
 printf("vendor (length %d)", length);
 if (p->pc_vendor == 0x8086) {

  uint8_t version;

  version = read_config(fd, &p->pc_sel, ptr + PCIR_VENDOR_DATA,
      1);
  printf(" Intel cap %d version %d", version >> 4, version & 0xf);
  if (version >> 4 == 1 && length == 12) {

   uint32_t fvec;
   int comma;

   comma = 0;
   fvec = read_config(fd, &p->pc_sel, ptr +
       PCIR_VENDOR_DATA + 5, 4);
   printf("\n\t\t features:");
   if (fvec & (1 << 0)) {
    printf(" AMT");
    comma = 1;
   }
   fvec = read_config(fd, &p->pc_sel, ptr +
       PCIR_VENDOR_DATA + 1, 4);
   if (fvec & (1 << 21)) {
    printf("%s Quick Resume", comma ? "," : "");
    comma = 1;
   }
   if (fvec & (1 << 18)) {
    printf("%s SATA RAID-5", comma ? "," : "");
    comma = 1;
   }
   if (fvec & (1 << 9)) {
    printf("%s Mobile", comma ? "," : "");
    comma = 1;
   }
   if (fvec & (1 << 7)) {
    printf("%s 6 PCI-e x1 slots", comma ? "," : "");
    comma = 1;
   } else {
    printf("%s 4 PCI-e x1 slots", comma ? "," : "");
    comma = 1;
   }
   if (fvec & (1 << 5)) {
    printf("%s SATA RAID-0/1/10", comma ? "," : "");
    comma = 1;
   }
   if (fvec & (1 << 3))
    printf(", SATA AHCI");
  }
 }
}
