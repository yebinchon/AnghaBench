
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firewire_comm {int dummy; } ;


 int CYCLE_DELAY ;
 int CYCLE_MOD ;
 int roundup2 (int,int) ;

__attribute__((used)) static int
fwohci_next_cycle(struct firewire_comm *fc, int cycle_now)
{
 int sec, cycle, cycle_match;

 cycle = cycle_now & 0x1fff;
 sec = cycle_now >> 13;






 cycle = cycle + 8;
 if (cycle >= 8000) {
  sec++;
  cycle -= 8000;
 }
 cycle = roundup2(cycle, 0x10);
 if (cycle >= 8000) {
  sec++;
  if (cycle == 8000)
   cycle = 0;
  else
   cycle = 0x10;
 }
 cycle_match = ((sec << 13) | cycle) & 0x7ffff;

 return (cycle_match);
}
