
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct run_softc {int dummy; } ;


 int RT2860_TSF_TIMER_DW0 ;
 int run_read_region_1 (struct run_softc*,int ,int *,int) ;

__attribute__((used)) static void
run_get_tsf(struct run_softc *sc, uint64_t *buf)
{
 run_read_region_1(sc, RT2860_TSF_TIMER_DW0, (uint8_t *)buf,
     sizeof(*buf));
}
