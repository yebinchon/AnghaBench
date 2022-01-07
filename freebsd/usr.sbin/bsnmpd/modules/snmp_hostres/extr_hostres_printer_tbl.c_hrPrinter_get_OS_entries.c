
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {char* printer; } ;


 int HRDBG (char*,...) ;
 int LOG_WARNING ;
 int firstprinter (struct printer*,int*) ;
 int handle_printer (struct printer*) ;
 int init_printer (struct printer*) ;
 int lastprinter () ;
 int nextprinter (struct printer*,int*) ;
 int printer_tick ;
 int syslog (int ,char*,char*) ;
 int this_tick ;

__attribute__((used)) static void
hrPrinter_get_OS_entries(void)
{
 int status, more;
 struct printer myprinter, *pp = &myprinter;

 init_printer(pp);
 HRDBG("---->Getting printers .....");
 more = firstprinter(pp, &status);
 if (status)
  goto errloop;

 while (more) {
  do {
   HRDBG("---->Got printer %s", pp->printer);

   handle_printer(pp);
   more = nextprinter(pp, &status);
errloop:
   if (status)
    syslog(LOG_WARNING,
        "hrPrinterTable: printcap entry for %s "
        "has errors, skipping",
        pp->printer ? pp->printer : "<noname?>");
  } while (more && status);
 }

 lastprinter();
 printer_tick = this_tick;
}
