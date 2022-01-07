
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcd_clocktime {int dummy; } ;
typedef int device_t ;


 int clock_dbgprint_hdr (int ,int) ;
 int clock_print_bcd (struct bcd_clocktime const*,int) ;
 int printf (char*) ;
 int show_io ;

void
clock_dbgprint_bcd(device_t dev, int rw, const struct bcd_clocktime *bct)
{

 if (show_io & rw) {
  clock_dbgprint_hdr(dev, rw);
  clock_print_bcd(bct, 9);
  printf("\n");
 }
}
