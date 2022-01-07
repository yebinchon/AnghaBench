
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
typedef int u32 ;
typedef TYPE_1__* hcb_p ;
struct TYPE_4__ {int scripta_ba; int scripta_sz; int scriptb_ba; int scriptb_sz; int device; scalar_t__ scriptb0; scalar_t__ scripta0; } ;


 int BF ;
 scalar_t__ INB (int ) ;
 scalar_t__ INB_OFF (int) ;
 int INL (int ) ;
 int MDPE ;
 int PCIR_STATUS ;
 int nc_dbc ;
 int nc_dsp ;
 int nc_sbcl ;
 int nc_sbdl ;
 int nc_scntl3 ;
 int nc_sdid ;
 int nc_socl ;
 int nc_sxfer ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;
 int printf (char*,...) ;
 int scr_to_cpu (int) ;
 char* sym_name (TYPE_1__*) ;

__attribute__((used)) static void sym_log_hard_error(hcb_p np, u_short sist, u_char dstat)
{
 u32 dsp;
 int script_ofs;
 int script_size;
 char *script_name;
 u_char *script_base;
 int i;

 dsp = INL (nc_dsp);

 if (dsp > np->scripta_ba &&
   dsp <= np->scripta_ba + np->scripta_sz) {
  script_ofs = dsp - np->scripta_ba;
  script_size = np->scripta_sz;
  script_base = (u_char *) np->scripta0;
  script_name = "scripta";
 }
 else if (np->scriptb_ba < dsp &&
   dsp <= np->scriptb_ba + np->scriptb_sz) {
  script_ofs = dsp - np->scriptb_ba;
  script_size = np->scriptb_sz;
  script_base = (u_char *) np->scriptb0;
  script_name = "scriptb";
 } else {
  script_ofs = dsp;
  script_size = 0;
  script_base = ((void*)0);
  script_name = "mem";
 }

 printf ("%s:%d: ERROR (%x:%x) (%x-%x-%x) (%x/%x) @ (%s %x:%08x).\n",
  sym_name (np), (unsigned)INB (nc_sdid)&0x0f, dstat, sist,
  (unsigned)INB (nc_socl), (unsigned)INB (nc_sbcl),
  (unsigned)INB (nc_sbdl), (unsigned)INB (nc_sxfer),
  (unsigned)INB (nc_scntl3), script_name, script_ofs,
  (unsigned)INL (nc_dbc));

 if (((script_ofs & 3) == 0) &&
     (unsigned)script_ofs < script_size) {
  printf ("%s: script cmd = %08x\n", sym_name(np),
   scr_to_cpu((int) *(u32 *)(script_base + script_ofs)));
 }

        printf ("%s: regdump:", sym_name(np));
        for (i=0; i<24;i++)
            printf (" %02x", (unsigned)INB_OFF(i));
        printf (".\n");




 if (dstat & (MDPE|BF)) {
  u_short pci_sts;
  pci_sts = pci_read_config(np->device, PCIR_STATUS, 2);
  if (pci_sts & 0xf900) {
   pci_write_config(np->device, PCIR_STATUS, pci_sts, 2);
   printf("%s: PCI STATUS = 0x%04x\n",
    sym_name(np), pci_sts & 0xf900);
  }
 }
}
