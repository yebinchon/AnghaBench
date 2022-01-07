
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct eventtimer {int dummy; } ;
struct decr_state {int mode; int div; } ;
typedef int sbintime_t ;
struct TYPE_2__ {int et_frequency; } ;


 struct decr_state* DPCPU_PTR (int ) ;
 int SPR_DECAR ;
 int SPR_TCR ;
 int TCR_ARE ;
 int TCR_DIE ;
 TYPE_1__ decr_et ;
 int decr_state ;
 int mfspr (int ) ;
 int mtdec (int) ;
 int mtspr (int ,int) ;

__attribute__((used)) static int
decr_et_start(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
 struct decr_state *s = DPCPU_PTR(decr_state);
 uint32_t fdiv;




 if (period != 0) {
  s->mode = 1;
  s->div = (decr_et.et_frequency * period) >> 32;
 } else {
  s->mode = 2;
  s->div = 0;
 }
 if (first != 0)
  fdiv = (decr_et.et_frequency * first) >> 32;
 else
  fdiv = s->div;
 mtdec(fdiv);


 return (0);
}
