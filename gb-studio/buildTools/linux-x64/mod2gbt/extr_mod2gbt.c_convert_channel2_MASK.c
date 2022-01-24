#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int,int,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int) ; 

void FUNC6(u8 pattern_number, u8 step_number, u8 note_index,
                      u8 samplenum, u8 effectnum, u8 effectparams)
{
    u8 result[3] = {0, 0, 0};
    int command_len = 1; // NOP

    u8 instrument = samplenum & 3;

    if (note_index > (6 * 12 - 1)) // Not valid note -> check if any effect
    {
        if ((effectnum != 0) || (effectparams != 0))
        {
            // Volume or others?
            if (effectnum == 0xC)
            {
                // Volume
                result[0] = FUNC0(5) | FUNC5(effectparams);
                command_len = 1;
            }
            else
            {
                // Others
                u8 converted_num, converted_params;
                if (FUNC1(pattern_number, step_number, 2, effectnum,
                                     effectparams, &converted_num,
                                     &converted_params) == 1)
                {
                    result[0] = FUNC0(6) | (instrument << 4) | converted_num;
                    result[1] = converted_params;
                    command_len = 2;
                }
                else
                {
                    if (effectnum != 0)
                    {
                        FUNC4("Invalid command at pattern %d, step %d, channel"
                               " 2: %01X%02X\n", pattern_number, step_number,
                               effectnum, effectparams);
                    }

                    // NOP
                    result[0] = 0;
                    command_len = 1;
                }
            }
        }
        else
        {
            // NOP
            result[0] = 0;
            command_len = 1;
        }
    }
    else // New note
    {
        u8 converted_num, converted_params;
        if (effectnum == 0xC)
        {
            // Note + Volume
            result[0] = FUNC0(7) | note_index;
            result[1] = (instrument << 4) | FUNC5(effectparams);
            command_len = 2;
        }
        else
        {
            if (FUNC1(pattern_number, step_number, 2, effectnum,
                                 effectparams, &converted_num,
                                 &converted_params) == 1)
            {
                // Note + Effect
                result[0] = FUNC0(7) | note_index;
                result[1] = FUNC0(7) | (instrument << 4) | converted_num;
                result[2] = converted_params;
                command_len = 3;
            }
            else // Note + No effect!! -> We need at least volume change!
            {
                FUNC4("Invalid command at pattern %d, step %d, channel 2: "
                       "%01X%02X\n", pattern_number, step_number, effectnum,
                       effectparams);

                if (effectnum == 0)
                    FUNC4("Volume must be set when using a new note.\n");
            }
        }
    }

    FUNC3("0x");
    FUNC2(result[0]);

    if (command_len > 1)
    {
        FUNC3(",0x");
        FUNC2(result[1]);

        if (command_len > 2)
        {
            FUNC3(",0x");
            FUNC2(result[2]);
        }
    }
}