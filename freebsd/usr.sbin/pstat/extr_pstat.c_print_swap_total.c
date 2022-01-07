
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double ksw_used; double ksw_total; } ;


 int CONVERT (double) ;
 int getbsize (int*,long*) ;
 int getpagesize () ;
 int nswdev ;
 int print_swap_line (char*,double,double,double,double) ;
 int printf (char*,int ,int ) ;
 TYPE_1__ swtot ;
 scalar_t__ totalflag ;

__attribute__((used)) static void
print_swap_total(void)
{
 int hlen, pagesize;
 long blocksize;

 pagesize = getpagesize();
 getbsize(&hlen, &blocksize);
 if (totalflag) {
  blocksize = 1024 * 1024;
  (void)printf("%jdM/%jdM swap space\n",
      CONVERT(swtot.ksw_used), CONVERT(swtot.ksw_total));
 } else if (nswdev > 1) {
  print_swap_line("Total", swtot.ksw_total, swtot.ksw_used,
      swtot.ksw_total - swtot.ksw_used,
      (swtot.ksw_used * 100.0) / swtot.ksw_total);
 }
}
