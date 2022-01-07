
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u32 ;
typedef TYPE_1__* hcb_p ;
struct TYPE_6__ {int rv_ctest4; int hcb_ba; int cache; } ;


 int BF ;
 int DIP ;
 int IID ;
 int INB (int ) ;
 int INL (int ) ;
 int INTF ;
 int MDPE ;
 int MPEE ;
 int OUTB (int ,int) ;
 int OUTL (int ,int) ;
 int OUTL_DSP (int) ;
 int SCRIPTB0_BA (TYPE_1__*,int ) ;
 int SIP ;
 int SYM_SNOOP_TIMEOUT ;
 int cpu_to_scr (int) ;
 int nc_ctest4 ;
 int nc_dsa ;
 int nc_dsp ;
 int nc_dstat ;
 int nc_istat ;
 int nc_scratcha ;
 int nc_temp ;
 int printf (char*,...) ;
 int scr_to_cpu (int ) ;
 int snoopend ;
 int snooptest ;
 char* sym_name (TYPE_1__*) ;
 int sym_regtest (TYPE_1__*) ;

__attribute__((used)) static int sym_snooptest (hcb_p np)
{
 u32 sym_rd, sym_wr, sym_bk, host_rd, host_wr, pc, dstat;
 int i, err=0;

 err |= sym_regtest (np);
 if (err) return (err);

restart_test:




 OUTB (nc_ctest4, (np->rv_ctest4 & MPEE));



 pc = SCRIPTB0_BA (np, snooptest);
 host_wr = 1;
 sym_wr = 2;



 np->cache = cpu_to_scr(host_wr);
 OUTL (nc_temp, sym_wr);



 OUTL (nc_dsa, np->hcb_ba);
 OUTL_DSP (pc);



 for (i=0; i<SYM_SNOOP_TIMEOUT; i++)
  if (INB(nc_istat) & (INTF|SIP|DIP))
   break;
 if (i>=SYM_SNOOP_TIMEOUT) {
  printf ("CACHE TEST FAILED: timeout.\n");
  return (0x20);
 }



 dstat = INB (nc_dstat);

 if ((dstat & MDPE) && (np->rv_ctest4 & MPEE)) {
  printf ("%s: PCI DATA PARITY ERROR DETECTED - "
   "DISABLING MASTER DATA PARITY CHECKING.\n",
   sym_name(np));
  np->rv_ctest4 &= ~MPEE;
  goto restart_test;
 }

 if (dstat & (MDPE|BF|IID)) {
  printf ("CACHE TEST FAILED: DMA error (dstat=0x%02x).", dstat);
  return (0x80);
 }



 pc = INL (nc_dsp);



 host_rd = scr_to_cpu(np->cache);
 sym_rd = INL (nc_scratcha);
 sym_bk = INL (nc_temp);




 if (pc != SCRIPTB0_BA (np, snoopend)+8) {
  printf ("CACHE TEST FAILED: script execution failed.\n");
  printf ("start=%08lx, pc=%08lx, end=%08lx\n",
   (u_long) SCRIPTB0_BA (np, snooptest), (u_long) pc,
   (u_long) SCRIPTB0_BA (np, snoopend) +8);
  return (0x40);
 }



 if (host_wr != sym_rd) {
  printf ("CACHE TEST FAILED: host wrote %d, chip read %d.\n",
   (int) host_wr, (int) sym_rd);
  err |= 1;
 }
 if (host_rd != sym_wr) {
  printf ("CACHE TEST FAILED: chip wrote %d, host read %d.\n",
   (int) sym_wr, (int) host_rd);
  err |= 2;
 }
 if (sym_bk != sym_wr) {
  printf ("CACHE TEST FAILED: chip wrote %d, read back %d.\n",
   (int) sym_wr, (int) sym_bk);
  err |= 4;
 }

 return (err);
}
