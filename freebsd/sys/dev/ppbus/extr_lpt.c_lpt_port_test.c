
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int DELAY (int) ;
 int lprintf (char*) ;
 int ppb_rdtr (int ) ;
 int ppb_wdtr (int ,int) ;

__attribute__((used)) static int
lpt_port_test(device_t ppbus, u_char data, u_char mask)
{
 int temp, timeout;

 data = data & mask;
 ppb_wdtr(ppbus, data);
 timeout = 10000;
 do {
  DELAY(10);
  temp = ppb_rdtr(ppbus) & mask;
 }
 while (temp != data && --timeout);
 lprintf(("out=%x\tin=%x\ttout=%d\n", data, temp, timeout));
 return (temp == data);
}
