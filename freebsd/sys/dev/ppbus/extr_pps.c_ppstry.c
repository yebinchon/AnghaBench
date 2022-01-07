
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PRVERBOSE (char*,int,int,int) ;
 int ppb_rdtr (int ) ;
 int ppb_wdtr (int ,int) ;

__attribute__((used)) static int
ppstry(device_t ppbus, int send, int expect)
{
 int i;

 ppb_wdtr(ppbus, send);
 i = ppb_rdtr(ppbus);
 PRVERBOSE("S: %02x E: %02x G: %02x\n", send, expect, i);
 return (i != expect);
}
