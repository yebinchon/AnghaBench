
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
typedef TYPE_1__* hcb_p ;
struct TYPE_14__ {int istat_sem; int rv_ctest3; int path; } ;


 int ABRT ;
 int BF ;
 int CABRT ;
 int CLF ;
 int CSF ;
 int DEBUG_FLAGS ;
 int DEBUG_TINY ;
 int DIP ;
 int GEN ;
 int HTH ;
 int IID ;
 int INB (int ) ;
 scalar_t__ INL (int ) ;
 int INTF ;
 int INW (int ) ;
 int MA ;
 int MA_OWNED ;
 int MDPE ;
 int MEMORY_BARRIER () ;
 int OUTB (int ,int) ;
 int OUTONB_STD () ;
 int PAR ;
 int RST ;
 int SBMC ;
 int SGE ;
 int SIGP ;
 int SIP ;
 int SIR ;
 int SSI ;
 int STO ;
 int SYM_LOCK_ASSERT (int ) ;
 int TE ;
 int UDC ;
 int nc_ctest3 ;
 int nc_dbc ;
 int nc_dsp ;
 int nc_dstat ;
 int nc_istat ;
 int nc_scr0 ;
 int nc_sist ;
 int nc_stest3 ;
 int printf (char*,...) ;
 int sym_init (TYPE_1__*,int) ;
 int sym_int_ma (TYPE_1__*) ;
 int sym_int_par (TYPE_1__*,int) ;
 int sym_int_sbmc (TYPE_1__*) ;
 int sym_int_sir (TYPE_1__*) ;
 int sym_int_sto (TYPE_1__*) ;
 int sym_int_udc (TYPE_1__*) ;
 int sym_log_hard_error (TYPE_1__*,int,int) ;
 char* sym_name (TYPE_1__*) ;
 int sym_start_reset (TYPE_1__*) ;
 int sym_wakeup_done (TYPE_1__*) ;
 int xpt_print_path (int ) ;

__attribute__((used)) static void sym_intr1 (hcb_p np)
{
 u_char istat, istatc;
 u_char dstat;
 u_short sist;

 SYM_LOCK_ASSERT(MA_OWNED);
 istat = INB (nc_istat);
 if (istat & INTF) {
  OUTB (nc_istat, (istat & SIGP) | INTF | np->istat_sem);
  istat = INB (nc_istat);
  if (DEBUG_FLAGS & DEBUG_TINY) printf ("F ");
  (void)sym_wakeup_done (np);
 }

 if (!(istat & (SIP|DIP)))
  return;
 sist = 0;
 dstat = 0;
 istatc = istat;
 do {
  if (istatc & SIP)
   sist |= INW (nc_sist);
  if (istatc & DIP)
   dstat |= INB (nc_dstat);
  istatc = INB (nc_istat);
  istat |= istatc;
 } while (istatc & (SIP|DIP));

 if (DEBUG_FLAGS & DEBUG_TINY)
  printf ("<%d|%x:%x|%x:%x>",
   (int)INB(nc_scr0),
   dstat,sist,
   (unsigned)INL(nc_dsp),
   (unsigned)INL(nc_dbc));




 MEMORY_BARRIER();
 if (!(sist & (STO|GEN|HTH|SGE|UDC|SBMC|RST)) &&
     !(dstat & (MDPE|BF|ABRT|IID))) {
  if (sist & PAR) sym_int_par (np, sist);
  else if (sist & MA) sym_int_ma (np);
  else if (dstat & SIR) sym_int_sir (np);
  else if (dstat & SSI) OUTONB_STD ();
  else goto unknown_int;
  return;
 }
 if (sist & RST) {
  xpt_print_path(np->path);
  printf("SCSI BUS reset detected.\n");
  sym_init (np, 1);
  return;
 }

 OUTB (nc_ctest3, np->rv_ctest3 | CLF);
 OUTB (nc_stest3, TE|CSF);

 if (!(sist & (GEN|HTH|SGE)) &&
     !(dstat & (MDPE|BF|ABRT|IID))) {
  if (sist & SBMC) sym_int_sbmc (np);
  else if (sist & STO) sym_int_sto (np);
  else if (sist & UDC) sym_int_udc (np);
  else goto unknown_int;
  return;
 }
 sym_log_hard_error(np, sist, dstat);

 if ((sist & (GEN|HTH|SGE)) ||
  (dstat & (MDPE|BF|ABRT|IID))) {
  sym_start_reset(np);
  return;
 }

unknown_int:




 printf( "%s: unknown interrupt(s) ignored, "
  "ISTAT=0x%x DSTAT=0x%x SIST=0x%x\n",
  sym_name(np), istat, dstat, sist);
}
