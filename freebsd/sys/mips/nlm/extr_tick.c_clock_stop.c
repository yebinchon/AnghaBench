
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {int dummy; } ;


 int DPCPU_SET (int ,int ) ;
 int cycles_per_tick ;
 int mips_wr_compare (int) ;

__attribute__((used)) static int
clock_stop(struct eventtimer *et)
{

 DPCPU_SET(cycles_per_tick, 0);
 mips_wr_compare(0xffffffff);
 return (0);
}
