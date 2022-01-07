
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int err (int,char*) ;
 int le16enc (int *,int ) ;
 scalar_t__ set_bootvar (char*,int *,int) ;

__attribute__((used)) static void
handle_bootnext(uint16_t bootnum)
{
 uint16_t num;

 le16enc(&num, bootnum);
 if (set_bootvar("BootNext", (uint8_t*)&bootnum, sizeof(uint16_t)) < 0)
  err(1, "set_bootvar");
}
