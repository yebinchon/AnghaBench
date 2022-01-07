
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* bktr_ptr_t ;
struct TYPE_6__ {unsigned int frequency; } ;
struct TYPE_7__ {TYPE_1__ tuner; } ;


 int MT2032_GetRegister (int) ;
 scalar_t__ MT2032_SetIFFreq (TYPE_2__*,unsigned int,int,int,int,int) ;
 char* bktr_name (TYPE_2__*) ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,unsigned int,int,int) ;

__attribute__((used)) static void
mt2032_set_tv_freq(bktr_ptr_t bktr, unsigned int freq)
{
 int if2,from,to;
 int stat, tad;






 from=32900*1000;
 to=39900*1000;
 if2=38900*1000;


 if (MT2032_SetIFFreq(bktr, freq*62500 ,
   1090*1000*1000, if2, from, to) == 0) {
  bktr->tuner.frequency = freq;
  stat = MT2032_GetRegister(0x0e);
  tad = MT2032_GetRegister(0x0f);
  if (bootverbose)
   printf("%s: frequency set to %d, st = %#x, tad = %#x\n",
    bktr_name(bktr), freq*62500, stat, tad);
 }
}
