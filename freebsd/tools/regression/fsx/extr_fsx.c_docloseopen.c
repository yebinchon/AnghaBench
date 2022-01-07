
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 scalar_t__ close (scalar_t__) ;
 scalar_t__ debug ;
 scalar_t__ fd ;
 int fname ;
 scalar_t__ open (int ,int ,int ) ;
 int prt (char*,scalar_t__) ;
 int prterr (char*) ;
 int report_failure (int) ;
 scalar_t__ simulatedopcount ;
 scalar_t__ testcalls ;

void
docloseopen(void)
{
 if (testcalls <= simulatedopcount)
  return;

 if (debug)
  prt("%lu close/open\n", testcalls);
 if (close(fd)) {
  prterr("docloseopen: close");
  report_failure(180);
 }
 fd = open(fname, O_RDWR, 0);
 if (fd < 0) {
  prterr("docloseopen: open");
  report_failure(181);
 }
}
