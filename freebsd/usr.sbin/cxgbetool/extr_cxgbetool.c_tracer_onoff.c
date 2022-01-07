
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct t4_tracer {int enabled; scalar_t__ valid; int idx; } ;


 int CHELSIO_T4_SET_TRACER ;
 int doit (int ,struct t4_tracer*) ;

__attribute__((used)) static int
tracer_onoff(uint8_t idx, int enabled)
{
 struct t4_tracer t;

 t.idx = idx;
 t.enabled = enabled;
 t.valid = 0;

 return doit(CHELSIO_T4_SET_TRACER, &t);
}
