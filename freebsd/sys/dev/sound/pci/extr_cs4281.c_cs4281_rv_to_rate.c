
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
typedef int u_int32_t ;


 size_t CS4281_NUM_RATES ;
 int* cs4281_rates ;

__attribute__((used)) static u_int32_t
cs4281_rv_to_rate(u_int8_t rv)
{
    u_int32_t r;

    if (rv < CS4281_NUM_RATES) return cs4281_rates[rv];
    r = 1536000 / rv;
    return r;
}
