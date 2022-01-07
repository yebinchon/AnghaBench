
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct twsi_softc {int clk_core; } ;
struct twsi_baud_rate {int m; int n; int param; void* raw; } ;


 int ABSSUB (int const,int) ;
 int TWSI_BAUD_RATE_PARAM (int,int) ;
 void* TWSI_BAUD_RATE_RAW (int ,int,int) ;
 int clk_get_freq (int ,int *) ;
 int get_tclk () ;

__attribute__((used)) static void
mv_twsi_cal_baud_rate(struct twsi_softc *sc, const uint32_t target,
    struct twsi_baud_rate *rate)
{
 uint64_t clk;
 uint32_t cur, diff, diff0;
 int m, n, m0, n0;


 m0 = n0 = 4;
 diff0 = 0xffffffff;



 clk = get_tclk();


 for (n = 0; n < 8; n++) {
  for (m = 0; m < 16; m++) {
   cur = TWSI_BAUD_RATE_RAW(clk,m,n);
   diff = ABSSUB(target, cur);
   if (diff < diff0) {
    m0 = m;
    n0 = n;
    diff0 = diff;
   }
  }
 }
 rate->raw = TWSI_BAUD_RATE_RAW(clk, m0, n0);
 rate->param = TWSI_BAUD_RATE_PARAM(m0, n0);
 rate->m = m0;
 rate->n = n0;
}
