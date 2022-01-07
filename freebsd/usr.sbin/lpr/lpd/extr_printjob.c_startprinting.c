
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int dummy; } ;


 int LOG_ERR ;



 int exit (int) ;
 int fatal (struct printer*,char*) ;
 int getprintcap (char const*,struct printer*) ;
 int init_printer (struct printer*) ;
 int printjob (struct printer*) ;
 int syslog (int ,char*,...) ;

void
startprinting(const char *printer)
{
 struct printer myprinter, *pp = &myprinter;
 int status;

 init_printer(pp);
 status = getprintcap(printer, pp);
 switch(status) {
 case 129:
  syslog(LOG_ERR, "can't open printer description file: %m");
  exit(1);
 case 130:
  syslog(LOG_ERR, "unknown printer: %s", printer);
  exit(1);
 case 128:
  fatal(pp, "potential reference loop detected in printcap file");
 default:
  break;
 }
 printjob(pp);
}
