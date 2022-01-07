
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENMI_BUSTIMER ;
 int ENMI_IOSTATUS ;
 int ENMI_WATCHDOG ;
 int LOG_CRIT ;
 int NMI_IOCHAN ;
 int NMI_PARITY ;
 int inb (int) ;
 int log (int ,char*,...) ;

int
isa_nmi(int cd)
{
 int retval = 0;
 int isa_port = inb(0x61);
 int eisa_port = inb(0x461);

 log(LOG_CRIT, "NMI ISA %x, EISA %x\n", isa_port, eisa_port);

 if (isa_port & NMI_PARITY) {
  log(LOG_CRIT, "RAM parity error, likely hardware failure.");
  retval = 1;
 }

 if (isa_port & NMI_IOCHAN) {
  log(LOG_CRIT, "I/O channel check, likely hardware failure.");
  retval = 1;
 }






 if (eisa_port == 0xff)
  return(retval);

 if (eisa_port & ENMI_WATCHDOG) {
  log(LOG_CRIT, "EISA watchdog timer expired, likely hardware failure.");
  retval = 1;
 }

 if (eisa_port & ENMI_BUSTIMER) {
  log(LOG_CRIT, "EISA bus timeout, likely hardware failure.");
  retval = 1;
 }

 if (eisa_port & ENMI_IOSTATUS) {
  log(LOG_CRIT, "EISA I/O port status error.");
  retval = 1;
 }

 return(retval);
}
