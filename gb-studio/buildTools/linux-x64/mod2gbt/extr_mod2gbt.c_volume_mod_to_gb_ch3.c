
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int volume_mod_to_gb (int) ;

int volume_mod_to_gb_ch3(int v)
{
    int vol = volume_mod_to_gb(v);

    switch (vol)
    {
        case 0: case 1: case 2: case 3:
            return 0;

        case 4: case 5: case 6: case 7:
            return 3;

        case 8: case 9: case 10: case 11:
            return 2;

        default:
        case 12: case 13: case 14: case 15:
            return 1;
    }

    return 0;
}
