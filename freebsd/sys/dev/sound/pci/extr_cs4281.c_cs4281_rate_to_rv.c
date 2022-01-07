
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
typedef size_t u_int32_t ;


 size_t CS4281_NUM_RATES ;
 size_t* cs4281_rates ;

__attribute__((used)) static u_int8_t
cs4281_rate_to_rv(u_int32_t rate)
{
    u_int32_t v;

    for (v = 0; v < CS4281_NUM_RATES; v++) {
 if (rate == cs4281_rates[v]) return v;
    }

    v = 1536000 / rate;
    if (v > 255 || v < 32) v = 5;
    return v;
}
