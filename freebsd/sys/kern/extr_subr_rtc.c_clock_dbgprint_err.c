
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int clock_dbgprint_hdr (int ,int) ;
 int printf (char*,int) ;
 int show_io ;

void
clock_dbgprint_err(device_t dev, int rw, int err)
{

 if (show_io & rw) {
  clock_dbgprint_hdr(dev, rw);
  printf("error = %d\n", err);
 }
}
