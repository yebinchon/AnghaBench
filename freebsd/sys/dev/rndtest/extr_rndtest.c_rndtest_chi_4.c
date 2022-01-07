
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rndtest_state {int* rs_buf; } ;
struct TYPE_2__ {int rst_chi; } ;


 int RNDTEST_CHI4_K ;
 int RNDTEST_CHI4_K_MASK ;
 unsigned int RNDTEST_NBYTES ;
 TYPE_1__ rndstats ;
 int rndtest_report (struct rndtest_state*,int,char*,unsigned int) ;

__attribute__((used)) static int
rndtest_chi_4(struct rndtest_state *rsp)
{
 unsigned int freq[RNDTEST_CHI4_K], i, sum;

 for (i = 0; i < RNDTEST_CHI4_K; i++)
  freq[i] = 0;


 for (i = 0; i < RNDTEST_NBYTES; i++) {
  freq[(rsp->rs_buf[i] >> 4) & RNDTEST_CHI4_K_MASK]++;
  freq[(rsp->rs_buf[i] >> 0) & RNDTEST_CHI4_K_MASK]++;
 }

 for (i = 0, sum = 0; i < RNDTEST_CHI4_K; i++)
  sum += freq[i] * freq[i];

 if (sum >= 1563181 && sum <= 1576929) {
  rndtest_report(rsp, 0, "chi^2(4): pass (sum %u)", sum);
  return (0);
 } else {
  rndtest_report(rsp, 1, "chi^2(4): failed (sum %u)", sum);
  rndstats.rst_chi++;
  return (-1);
 }
}
