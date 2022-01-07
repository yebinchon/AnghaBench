
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int vi_flags; } ;
typedef TYPE_1__ video_info_t ;
struct TYPE_15__ {int va_flags; int va_mode; int va_type; } ;
typedef TYPE_2__ video_adapter_t ;
struct TYPE_16__ {int* regs; int sig; } ;
typedef TYPE_3__ adp_state_t ;


 int EINVAL ;
 int ENODEV ;
 int V_ADP_COLOR ;
 int V_ADP_MODECHANGE ;
 int V_INFO_LINEAR ;
 int V_STATE_SIG ;
 int bcopy (int ,int*,int) ;
 int get_mode_param (int) ;
 int map_gen_mode_num (int ,int,int) ;
 int printf (char*,int) ;
 int prologue (TYPE_2__*,int ,int) ;
 int set_width90 (TYPE_3__*) ;
 int update_adapter_info (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ vga_get_info (TYPE_2__*,int,TYPE_1__*) ;
 int vga_load_state (TYPE_2__*,TYPE_3__*) ;
 int vidd_set_hw_cursor (TYPE_2__*,int,int) ;

__attribute__((used)) static int
vga_set_mode(video_adapter_t *adp, int mode)
{

    video_info_t info;
    adp_state_t params;

    prologue(adp, V_ADP_MODECHANGE, ENODEV);

    mode = map_gen_mode_num(adp->va_type,
       adp->va_flags & V_ADP_COLOR, mode);
    if (vga_get_info(adp, mode, &info))
 return EINVAL;





    params.sig = V_STATE_SIG;
    bcopy(get_mode_param(mode), params.regs, sizeof(params.regs));

    switch (mode) {





    case 144: case 134:
 params.regs[2] = 0x08;
 params.regs[19] = 0x47;
 goto special_480l;






    case 146: case 136:
 params.regs[19] = 0x4f;
special_480l:
 params.regs[9] |= 0xc0;
 params.regs[16] = 0x08;
 params.regs[17] = 0x3e;
 params.regs[26] = 0xea;
 params.regs[28] = 0xdf;
 params.regs[31] = 0xe7;
 params.regs[32] = 0x04;
 goto setup_mode;






    case 150: case 153:
 params.regs[28] = 87;
 goto special_80x50;






    case 145: case 135:
special_80x50:
 params.regs[2] = 8;
 params.regs[19] = 7;
 goto setup_mode;






    case 148: case 147:
    case 137:
    case 168: case 163:
    case 167: case 162:
    case 155: case 152:
    case 154: case 151:
    case 156:

setup_mode:
 vga_load_state(adp, &params);
 break;

    case 128:

 params.regs[5-1+0x04] &= 0xf7;
 params.regs[5-1+0x04] |= 0x04;

 params.regs[10+0x14] &= 0xbf;

 params.regs[10+0x17] |= 0x40;

 params.regs[10+0x13] = 80;

 params.regs[10+0x11] = 0x2c;
 params.regs[10+0x06] = 0x0d;
 params.regs[10+0x07] = 0x3e;
 params.regs[10+0x10] = 0xea;
 params.regs[10+0x11] = 0xac;
 params.regs[10+0x12] = 0xdf;
 params.regs[10+0x15] = 0xe7;
 params.regs[10+0x16] = 0x06;

 params.regs[9] = 0xe3;
 goto setup_grmode;

    case 166: case 161: case 165:
    case 160: case 159:
    case 158: case 149:
    case 164: case 157: case 138:

setup_grmode:
 vga_load_state(adp, &params);
 break;

    default:
 return EINVAL;
    }

    adp->va_mode = mode;
    info.vi_flags &= ~V_INFO_LINEAR;
    update_adapter_info(adp, &info);


    vidd_set_hw_cursor(adp, -1, -1);

    return 0;



}
