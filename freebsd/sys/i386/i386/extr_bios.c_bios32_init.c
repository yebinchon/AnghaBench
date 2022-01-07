
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ u_int8_t ;
struct bios32_SDheader {int len; int entry; int revision; } ;
struct PnPBIOS_table {int len; int pmentrybase; int pmentryoffset; int version; int control; int evflagaddr; int oemdevid; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {int base; int entry; TYPE_1__ ident; } ;


 int BIOS_PADDRTOVADDR (int) ;
 int BIOS_SIZE ;
 int BIOS_START ;
 TYPE_2__ PCIbios ;
 struct PnPBIOS_table* PnPBIOStable ;
 int bios32_SDCI ;
 int bios32_SDlookup (TYPE_2__*) ;
 int bios_sigsearch (int ,char*,int,int,int ) ;
 scalar_t__ bootverbose ;
 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
bios32_init(void *junk)
{
    u_long sigaddr;
    struct bios32_SDheader *sdh;
    struct PnPBIOS_table *pt;
    u_int8_t ck, *cv;
    int i;
    char *p;






    if ((sigaddr = bios_sigsearch(0, "_32_", 4, 16, 0)) != 0) {


 sdh = (struct bios32_SDheader *)(uintptr_t)BIOS_PADDRTOVADDR(sigaddr);
 for (cv = (u_int8_t *)sdh, ck = 0, i = 0; i < (sdh->len * 16); i++) {
     ck += cv[i];
 }

 if ((ck == 0) && (BIOS_START <= sdh->entry ) &&
     (sdh->entry < (BIOS_START + BIOS_SIZE))) {
     bios32_SDCI = BIOS_PADDRTOVADDR(sdh->entry);
     if (bootverbose) {
  printf("bios32: Found BIOS32 Service Directory header at %p\n", sdh);
  printf("bios32: Entry = 0x%x (%x)  Rev = %d  Len = %d\n",
         sdh->entry, bios32_SDCI, sdh->revision, sdh->len);
     }


     if (((p = kern_getenv("machdep.bios.pci")) == ((void*)0)) || strcmp(p, "disable")) {


  PCIbios.ident.id = 0x49435024;
  if (!bios32_SDlookup(&PCIbios) && bootverbose)
      printf("pcibios: PCI BIOS entry at 0x%x+0x%x\n", PCIbios.base, PCIbios.entry);
     }
     if (p != ((void*)0))
      freeenv(p);
 } else {
     printf("bios32: Bad BIOS32 Service Directory\n");
 }
    }






    if ((((p = kern_getenv("machdep.bios.pnp")) == ((void*)0)) || strcmp(p, "disable")) &&
 ((sigaddr = bios_sigsearch(0, "$PnP", 4, 16, 0)) != 0)) {


 pt = (struct PnPBIOS_table *)(uintptr_t)BIOS_PADDRTOVADDR(sigaddr);
 for (cv = (u_int8_t *)pt, ck = 0, i = 0; i < pt->len; i++) {
     ck += cv[i];
 }

 if (ck == 0) {
     PnPBIOStable = pt;
     if (bootverbose) {
  printf("pnpbios: Found PnP BIOS data at %p\n", pt);
  printf("pnpbios: Entry = %x:%x  Rev = %d.%d\n",
         pt->pmentrybase, pt->pmentryoffset, pt->version >> 4, pt->version & 0xf);
  if ((pt->control & 0x3) == 0x01)
      printf("pnpbios: Event flag at %x\n", pt->evflagaddr);
  if (pt->oemdevid != 0)
      printf("pnpbios: OEM ID %x\n", pt->oemdevid);

     }
 } else {
     printf("pnpbios: Bad PnP BIOS data checksum\n");
 }
    }
    if (p != ((void*)0))
     freeenv(p);
    if (bootverbose) {

     printf("Other BIOS signatures found:\n");
    }
}
