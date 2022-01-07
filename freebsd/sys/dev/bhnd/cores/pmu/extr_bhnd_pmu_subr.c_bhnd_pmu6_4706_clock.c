
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct bhnd_pmu_query {int io_ctx; TYPE_1__* io; } ;
struct TYPE_2__ {int (* rd_chipst ) (int ) ;} ;


 int BHND_PMU6_4706_PROCPLL_OFF ;
 int BHND_PMU6_4706_PROC_NDIV_INT ;
 int BHND_PMU6_4706_PROC_P1DIV ;
 int BHND_PMU6_4706_PROC_P2DIV ;



 int BHND_PMU_GET_BITS (int,int ) ;
 int BHND_PMU_PLL_CONTROL_ADDR ;
 int BHND_PMU_PLL_CONTROL_DATA ;
 int BHND_PMU_READ_4 (struct bhnd_pmu_query*,int ) ;
 int BHND_PMU_WRITE_4 (struct bhnd_pmu_query*,int ,int) ;
 int CHIPC_CST4706_LOWCOST_PKG ;
 int PMU_LOG (struct bhnd_pmu_query*,char*,int) ;
 int stub1 (int ) ;

__attribute__((used)) static uint32_t
bhnd_pmu6_4706_clock(struct bhnd_pmu_query *sc, u_int pll0, u_int m)
{
 uint32_t chipst, clock;
 uint32_t ndiv, p1div, p2div, tmp;


 BHND_PMU_WRITE_4(sc, BHND_PMU_PLL_CONTROL_ADDR,
     pll0 + BHND_PMU6_4706_PROCPLL_OFF);
 BHND_PMU_READ_4(sc, BHND_PMU_PLL_CONTROL_ADDR);

 tmp = BHND_PMU_READ_4(sc, BHND_PMU_PLL_CONTROL_DATA);
 ndiv = BHND_PMU_GET_BITS(tmp, BHND_PMU6_4706_PROC_NDIV_INT);
 p1div = BHND_PMU_GET_BITS(tmp, BHND_PMU6_4706_PROC_P1DIV);
 p2div = BHND_PMU_GET_BITS(tmp, BHND_PMU6_4706_PROC_P2DIV);


 clock = 25 * 1000 * 1000;


 chipst = sc->io->rd_chipst(sc->io_ctx);
 if (chipst & CHIPC_CST4706_LOWCOST_PKG)
  clock /= 4;
 else
  clock /= 2;

 clock *= ndiv * p2div / p1div;

 switch (m) {
 case 130:
  return (clock);
 case 129:
  return (clock / 2);
 case 128:
  return (clock / 4);
 default:
  PMU_LOG(sc, "bad m divider: %d", m);
  return (0);
 }
}
