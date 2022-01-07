
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int HDA_PARAM_OUTPUT_AMP_CAP_MUTE_CAP (int ) ;
 int HDA_PARAM_OUTPUT_AMP_CAP_NUMSTEPS (int ) ;
 int HDA_PARAM_OUTPUT_AMP_CAP_OFFSET (int ) ;
 int HDA_PARAM_OUTPUT_AMP_CAP_STEPSIZE (int ) ;
 int device_printf (int ,char*,char const*,int ,int ,int,int,int,int,int) ;

__attribute__((used)) static void
hdaa_dump_amp(device_t dev, uint32_t cap, const char *banner)
{
 int offset, size, step;

 offset = HDA_PARAM_OUTPUT_AMP_CAP_OFFSET(cap);
 size = HDA_PARAM_OUTPUT_AMP_CAP_STEPSIZE(cap);
 step = HDA_PARAM_OUTPUT_AMP_CAP_NUMSTEPS(cap);
 device_printf(dev, "     %s amp: 0x%08x "
     "mute=%d step=%d size=%d offset=%d (%+d/%+ddB)\n",
     banner, cap,
     HDA_PARAM_OUTPUT_AMP_CAP_MUTE_CAP(cap),
     step, size, offset,
     ((0 - offset) * (size + 1)) / 4,
     ((step - offset) * (size + 1)) / 4);
}
