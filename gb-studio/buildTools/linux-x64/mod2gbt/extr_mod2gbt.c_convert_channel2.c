
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;
 int effect_mod_to_gb (int,int,int,int,int,int*,int*) ;
 int out_write_hex (int) ;
 int out_write_str (char*) ;
 int printf (char*,...) ;
 int volume_mod_to_gb (int) ;

void convert_channel2(u8 pattern_number, u8 step_number, u8 note_index,
                      u8 samplenum, u8 effectnum, u8 effectparams)
{
    u8 result[3] = {0, 0, 0};
    int command_len = 1;

    u8 instrument = samplenum & 3;

    if (note_index > (6 * 12 - 1))
    {
        if ((effectnum != 0) || (effectparams != 0))
        {

            if (effectnum == 0xC)
            {

                result[0] = BIT(5) | volume_mod_to_gb(effectparams);
                command_len = 1;
            }
            else
            {

                u8 converted_num, converted_params;
                if (effect_mod_to_gb(pattern_number, step_number, 2, effectnum,
                                     effectparams, &converted_num,
                                     &converted_params) == 1)
                {
                    result[0] = BIT(6) | (instrument << 4) | converted_num;
                    result[1] = converted_params;
                    command_len = 2;
                }
                else
                {
                    if (effectnum != 0)
                    {
                        printf("Invalid command at pattern %d, step %d, channel"
                               " 2: %01X%02X\n", pattern_number, step_number,
                               effectnum, effectparams);
                    }


                    result[0] = 0;
                    command_len = 1;
                }
            }
        }
        else
        {

            result[0] = 0;
            command_len = 1;
        }
    }
    else
    {
        u8 converted_num, converted_params;
        if (effectnum == 0xC)
        {

            result[0] = BIT(7) | note_index;
            result[1] = (instrument << 4) | volume_mod_to_gb(effectparams);
            command_len = 2;
        }
        else
        {
            if (effect_mod_to_gb(pattern_number, step_number, 2, effectnum,
                                 effectparams, &converted_num,
                                 &converted_params) == 1)
            {

                result[0] = BIT(7) | note_index;
                result[1] = BIT(7) | (instrument << 4) | converted_num;
                result[2] = converted_params;
                command_len = 3;
            }
            else
            {
                printf("Invalid command at pattern %d, step %d, channel 2: "
                       "%01X%02X\n", pattern_number, step_number, effectnum,
                       effectparams);

                if (effectnum == 0)
                    printf("Volume must be set when using a new note.\n");
            }
        }
    }

    out_write_str("0x");
    out_write_hex(result[0]);

    if (command_len > 1)
    {
        out_write_str(",0x");
        out_write_hex(result[1]);

        if (command_len > 2)
        {
            out_write_str(",0x");
            out_write_hex(result[2]);
        }
    }
}
