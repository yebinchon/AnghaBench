
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_int ;
struct agg_info {int dummy; } ;
typedef int int16_t ;


 int APUREG_AMPLITUDE ;
 int APUREG_CURPTR ;
 int APUREG_ENDPTR ;
 int APUREG_FREQ_HIWORD ;
 int APUREG_FREQ_LOBYTE ;
 int APUREG_LOOPLEN ;
 int APUREG_POSITION ;
 int APUREG_ROUTING ;
 int APUREG_WAVESPACE ;
 int APU_64KPAGE_MASK ;
 int APU_FREQ_LOBYTE_SHIFT ;
 int APU_PAN_MASK ;
 int APU_PAN_SHIFT ;
 int APU_RADIUS_MASK ;
 int APU_RADIUS_SHIFT ;
 int APU_plus6dB ;
 int PAN_FRONT ;
 int RADIUS_CENTERCIRCLE ;
 int wp_wrapu (struct agg_info*,int,int ,int) ;

__attribute__((used)) static void
apu_setparam(struct agg_info *ess, int apuch,
    u_int32_t wpwa, u_int16_t size, int16_t pan, u_int dv)
{
 wp_wrapu(ess, apuch, APUREG_WAVESPACE, (wpwa >> 8) & APU_64KPAGE_MASK);
 wp_wrapu(ess, apuch, APUREG_CURPTR, wpwa);
 wp_wrapu(ess, apuch, APUREG_ENDPTR, wpwa + size);
 wp_wrapu(ess, apuch, APUREG_LOOPLEN, size);
 wp_wrapu(ess, apuch, APUREG_ROUTING, 0);
 wp_wrapu(ess, apuch, APUREG_AMPLITUDE, 0xf000);
 wp_wrapu(ess, apuch, APUREG_POSITION, 0x8f00
     | (APU_RADIUS_MASK & (RADIUS_CENTERCIRCLE << APU_RADIUS_SHIFT))
     | (APU_PAN_MASK & ((pan + PAN_FRONT) << APU_PAN_SHIFT)));
 wp_wrapu(ess, apuch, APUREG_FREQ_LOBYTE,
     APU_plus6dB | ((dv & 0xff) << APU_FREQ_LOBYTE_SHIFT));
 wp_wrapu(ess, apuch, APUREG_FREQ_HIWORD, dv >> 8);
}
