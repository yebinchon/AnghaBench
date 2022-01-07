
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nitems (int*) ;

__attribute__((used)) static int
map_bios_mode_num(int type, int color, int bios_mode)
{
    static int cga_modes[7] = {
 149, 144,
 148, 143,
 147, 142,
 146,
    };
    static int ega_modes[17] = {
 136, 134,
 135, 133,
 147, 142,
 146,
 138,
 8, 9, 10, 11, 12,
 141,
 140,
 137,
 132,
    };
    static int vga_modes[20] = {
 131, 131,
 130, 130,
 147, 142,
 146,
 128,
 8, 9, 10, 11, 12,
 141,
 140,
 137,
 132,
 145, 139,
 129,
    };

    switch (type) {

    case 150:
 if (bios_mode < nitems(vga_modes))
     return vga_modes[bios_mode];
 else if (color)
     return 130;
 else
     return 128;
 break;

    case 153:
 if (bios_mode < nitems(ega_modes))
     return ega_modes[bios_mode];
 else if (color)
     return 133;
 else
     return 138;
 break;

    case 154:
 if (bios_mode < nitems(cga_modes))
     return cga_modes[bios_mode];
 else
     return 143;
 break;

    case 151:
    case 152:
 return 138;

    default:
 break;
    }
    return -1;
}
