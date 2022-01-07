
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct eventtimer {int dummy; } ;
struct decr_state {int div; scalar_t__ mode; } ;


 struct decr_state* DPCPU_PTR (int ) ;
 int SPR_TCR ;
 int TCR_ARE ;
 int TCR_DIE ;
 int decr_state ;
 int mfspr (int ) ;
 int mtdec (int) ;
 int mtspr (int ,int) ;

__attribute__((used)) static int
decr_et_stop(struct eventtimer *et)
{
 struct decr_state *s = DPCPU_PTR(decr_state);




 s->mode = 0;
 s->div = 0x7fffffff;





 mtdec(s->div);

 return (0);
}
