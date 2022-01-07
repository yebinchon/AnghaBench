
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int device_t ;


 int CLOCK_DBG_READ ;
 int clock_print_ts (struct timespec*,int) ;
 int device_printf (int ,char*,char*) ;
 int getnanotime (struct timespec*) ;
 int printf (char*) ;

__attribute__((used)) static void
clock_dbgprint_hdr(device_t dev, int rw)
{
 struct timespec now;

 getnanotime(&now);
 device_printf(dev, "%s at ", (rw & CLOCK_DBG_READ) ? "read " : "write");
 clock_print_ts(&now, 9);
 printf(": ");
}
