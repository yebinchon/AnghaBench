
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SPEED_MOD_TO_GB (int) ;
 int printf (char*,int,int,int,int,int) ;

int EFFECT_MOD_TO_GB(u8 pattern_number, u8 step_number, u8 channel,
                            u8 effectnum, u8 effectparams, u8 * converted_num, u8 * converted_params)
{
    switch(effectnum)
    {
        case 0x0:
        {
            *converted_num = 1;
            *converted_params = effectparams;
            return 1;
        }
        case 0xB:
        {
            *converted_num = 8;
            *converted_params = effectparams;
            return 1;
        }
        case 0xC:
        {
            printf("Strange error at pattern %d, step %d, channel %d: %01X%02X\n",
                           pattern_number,step_number,channel,effectnum,effectparams);
            return 0;
        }
        case 0xD:
        {
            *converted_num = 9;
            *converted_params = (((effectparams&0xF0) >> 4) * 10) + (effectparams&0xF);

            return 1;
        }
        case 0xE:
        {
            if((effectparams&0xF0) == 0x80)
            {
                u8 left = 0;
                u8 right = 0;
                switch(effectparams & 0xF)
                {
                    case 0: case 1: case 2: case 3: left = 1; break;
                    default:
                    case 4: case 5: case 6: case 7:
                    case 8: case 9: case 10: case 11: left = 1; right = 1; break;
                    case 12: case 13: case 14: case 15: right = 1; break;
                }
                *converted_num = 0;
                *converted_params = (left<<(3+channel))|(right<<(channel-1));
                return 1;
            }
            if((effectparams&0xF0) == 0xC0)
            {
                *converted_num = 2;
                *converted_params = (effectparams & 0xF);
                return 1;
            }
            else
            {
                printf("Unsupported effect at pattern %d, step %d, channel %d: %01X%02X\n",
                       pattern_number,step_number,channel,effectnum,effectparams);
                return 0;
            }
            break;
        }
        case 0xF:
            if(effectparams > 0x1F)
            {
                printf("Unsupported BPM speed effect at pattern %d, step %d, channel %d: %01X%02X\n",
                       pattern_number,step_number,channel,effectnum,effectparams);
                return 0;
            }
            else
            {
                *converted_num = 10;
                *converted_params = SPEED_MOD_TO_GB(effectparams);
                return 1;
            }
        break;

        default:
        {
            printf("Unsupported effect at pattern %d, step %d, channel %d: %01X%02X\n",
                       pattern_number,step_number,channel,effectnum,effectparams);
            return 0;
        }
    }
    return 0;
}
